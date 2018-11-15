<?php if ( ! defined('BASEPATH')) exit('No direct access allowed');
	
	/**
	* class inventory
	*/
	class Inventories extends Admin_Controller
	{
		
		function __construct()
		{
			parent::__construct();

			$this->user->restrict('Admin.Menus');

		
			$this->load->model('Menus_model'); // load the menus model
			$this->load->model('Items_model'); // load the menus model
			//$this->load->model('Categories_model'); // load the categories model
			$this->load->model('ItemCategories_model');
			$this->load->model('ItemsMenuAssoc_model');

			$this->load->library('pagination');
			//$this->load->model('Menu_options_model'); // load the menu options model
			$this->load->model('Locations_model'); // load the mealtimes model

			$this->lang->load('items');
		}

		public function index(){

			$this->template->setTitle($this->lang->line('text_title'));
			$this->template->setHeading($this->lang->line('text_heading'));

			$url = '?';
			$filter = array();

			if ($this->input->get('page')) {
				$filter['page'] = (int) $this->input->get('page');
			} else {
				$filter['page'] = '';
			}

			if ($this->config->item('page_limit')) {
				$filter['limit'] = $this->config->item('page_limit');
			}

			if ($this->input->get('from')) {
				$filter['from'] = $data['from'] = $this->input->get('from');
				$url .= 'from=' . $filter['from'] . '&';
			} else {
				$data['from'] = '';
			}

			if ($this->input->get('to')) {
				$filter['to'] = $data['to'] = $this->input->get('to');
				$url .= 'to=' . $filter['to'] . '&';
			} else {
				$data['to'] = '';
			}

			if ($this->input->get('location')) {
				$filter['location'] = $data['loc'] = (int) $this->input->get('location');
				$url .= 'location=' . $filter['location'];
			} else {
				$data['location'] = '';
			}

			$data['items'] = $this->Items_model->getItems();
			$data['items_stocks'] = $this->Items_model->getItemsStock($filter);
			$data['locations'] = $this->Locations_model->getLocations();

			$config['base_url'] = site_url('inventories' . $url);
			$config['total_rows'] = $this->Items_model->getCount($filter);
			$config['per_page'] = $filter['limit'];

			$this->pagination->initialize($config);

			$data['pagination'] = array(
				'info'  => $this->pagination->create_infos(),
				'links' => $this->pagination->create_links(),
			);

			$this->template->render('export_excel', $data);
		}

		public function toExcel()
		{
			$data['filename'] = 'data-'.time().'.xls';
		   	// $data['items'] = $this->Items_model->getItems();

		   	$url = '?';
			$filter = array();

			if ($this->input->get('from')) {
				$filter['from'] = $this->input->get('from');
				$url .= 'from=' . $filter['from'] . '&';
			} 

			if ($this->input->get('to')) {
				$filter['to'] = $this->input->get('to');
				$url .= 'to=' . $filter['to'] . '&';
			}

			if ($this->input->get('location')) {
				$filter['location'] = (int) $this->input->get('location');
				$url .= 'location=' . $filter['location'];
			} 

		   	$data['items_stocks'] = $this->Items_model->getItemsStock($filter);
			
			$this->template->render('export_excel_data', $data);
		}

		// // create xlsx
  //   	public function createXLS() {
  //   		// create file name
  //       	$fileName = 'data-'.time().'.xlsx';

  //       	// load excel library
	 //        $this->load->library('excel');
	 //        $data['items'] = $this->Items_model->getItems();
	 //        $objPHPExcel = new PHPExcel();
	 //        $objPHPExcel->setActiveSheetIndex(0);
	 //        // set Header
	 //        $objPHPExcel->getActiveSheet()->SetCellValue('A1', 'Item');
	 //        $objPHPExcel->getActiveSheet()->SetCellValue('B1', 'Price');
	 //        $objPHPExcel->getActiveSheet()->SetCellValue('C1', 'Stock');
	 //        $objPHPExcel->getActiveSheet()->SetCellValue('D1', 'MiN_Qty');
	 //        $objPHPExcel->getActiveSheet()->SetCellValue('E1', 'Added_at');       
	 //        // set Row
	 //        $rowCount = 2;
	 //        foreach ($items as $element) {
	 //            $objPHPExcel->getActiveSheet()->SetCellValue('A' . $rowCount, $element['item_name']);
	 //            $objPHPExcel->getActiveSheet()->SetCellValue('B' . $rowCount, $element['item_price']);
	 //            $objPHPExcel->getActiveSheet()->SetCellValue('C' . $rowCount, $element['stock_qty']);
	 //            $objPHPExcel->getActiveSheet()->SetCellValue('D' . $rowCount, $element['minimum_qty']);
	 //            $objPHPExcel->getActiveSheet()->SetCellValue('E' . $rowCount, $element['added_at']);
	 //            $rowCount++;
	 //        }
	 //        $objWriter = new PHPExcel_Writer_Excel2007($objPHPExcel);
	 //        $objWriter->save(ROOT_UPLOAD_IMPORT_PATH.$fileName);
		// 	// download file
	 //        header('Content-Type: application/vnd.ms-excel');
  //       	header('Content-Disposition: attachment;filename=$fileName');
  //       	header('Cache-Control: max-age=0');
	 //        redirect(HTTP_UPLOAD_IMPORT_PATH.$fileName); 

  //   	}


	}