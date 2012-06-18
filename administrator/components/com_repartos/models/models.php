<?php

	/*
	** Generated by Joomla Admin Generator
	** Author: Christian Maioli Mackeprang
	** Email: mmchristian@gmail.com
	** 
	** Component:  com_repartos
	** Model: RepartosModels
	** File: models.php
	** Time: Mon, 18 Jun 2012 01:52:57
	*/

	class RepartosModels extends JDatabaseMySQL
	{

		var $db = null;
		var $sql = '';
		var $sql_query_select = "select %s from %s";
		var $sql_query_delete = "delete from %s";

		function RepartosModels()
		{
			$conf =& JFactory::getConfig();
			$host 		= $conf->getValue('config.host');
			$user 		= $conf->getValue('config.user');
			$password 	= $conf->getValue('config.password');
			$database	= $conf->getValue('config.db');
			$prefix 	= $conf->getValue('config.dbprefix');
			$driver 	= $conf->getValue('config.dbtype');
			$debug 		= $conf->getValue('config.debug');
			$options	= array ( 'driver' => $driver, 'host' => $host,
									'user' => $user, 'password' => $password,
									'database' => $database, 'prefix' => $prefix );
			parent::__construct($options);
		}

		/**
		 * Get a record
		 * 
		 * @param string table
		 * @param array record_condition
		 * @param array fields 
		 * @param string key
		 * @return object
		 */
		function loadRecord($table, $record_condition = array(),  $fields =array(), $key = 'id')
		{
			$where = '';
			if(is_array($record_condition) && count($record_condition)>=1){/* Nếu $record_condition là một mảng */
				foreach($record_condition as $k=>$v)
				{
					$where[] = "$k='$v'";
				}
				$where = implode(" and ", $where);
			}elseif(is_string($record_condition)){/* Nếu $record_condition là một chuỗi */
				$where = "$record_condition";
			}elseif(is_int($record_condition)){// hoặc là 1 con số nguyên
				$where = "$key = $record_condition";
			}
			if(strlen($where)>0)
				$where = ' where '.$where;

			if(is_array($fields) && count($fields)>=1){
				$fields_str = implode(',', $fields);
			}else{
				$fields_str = '*';
			}
			
			$from_table = $this->getPrefix().$table;
			$from_where = $from_table.$where;
			
			$sql = sprintf($this->sql_query_select, $fields_str, $from_where);
			$this->setQuery($sql);//die(this->getQuery());
			return $this->loadObject();
		}

		/**
		 * Get more records
		 * 
		 * @param string table
		 * @param array record_condition
		 * @param int limitstart
		 * @param int limit
		 * @param boolean total
		 * @param array query_join
		 * @param string for_or_condition
		 * @return object
		 * 
		 * $query_join['select']
		 * $query_join['table']
		 * $query_join['condition']
		 */
		function loadRecords($table, $record_condition=array(), $limitstart=0, $limit=1, $total = false, 
								$query_join=array(), $for_or_condition = '')
		{
			$where = '';
			$also_select = '';
			$join_condition = '';
			$from_table = $this->getPrefix().$table;
			$select = $from_table.'.* ';
			
			if(is_array($record_condition) && count($record_condition)>=1){
				foreach($record_condition as $k=>$v)
				{
					$w[] = "`$k`='$v'";
				}
				$where = implode(" and ", $w);
			}
			if(strlen($where)>=1){
				$where = " where ".$where;
			}
			
			if(strlen($for_or_condition)>=1) 
			{
				if(strlen($where)>=1)
					$where .= " and ($for_or_condition)";
				else
					$where = " where  ($for_or_condition)";
			}
			
			if(count($query_join)>=1){
				$also_select = ", ".$query_join['select'];
				$join_condition = " inner join ".$query_join['table'].' on '.$query_join['condition'];
			}
			
			if(count($also_select)>=1)
				$select = $select.$also_select;
			
			if($total == true){
				$from_where = $from_table.$where;
				$sql = sprintf($this->sql_query_select, 'count(*) as tt', $from_where);
				$this->setQuery($sql);
				return $this->loadResult();
			}


			$from_where = $from_table.$join_condition.$where;
			
			$sql = sprintf($this->sql_query_select, $select , $from_where);
			$this->setQuery($sql, $limitstart, $limit); //die($this->getQuery());
			//echo $this->getQuery();
			return $this->loadObjectList();
		}
		
		/**
		 * Remove the records
		 * 
		 * @param string table
		 * @param array record_condition
		 * @param string key
		 * 
		 */
		function removeRecords($table, $record_condition = array(), $key = 'id')
		{
			$where = '';
			if(is_array($record_condition) && count($record_condition)>=1)
			{
				foreach($record_condition as $k=>$v)
				{
					$where[] = "$k='$v'";
				}
				$where = " where `$key` in (".implode(" and ", $where).")";
			}
			$from_table = $this->getPrefix().$table;
			$from_where = $from_table.$where;
			$sql = sprintf($this->sql_query_delete, $from_where);
			$this->setQuery($sql); $this->query();
		}

		/**
		 * Update the record
		 * 
		 * @param string table
		 * @param array/object data
		 * @param int k 
		 * @return boolean
		 */
		function updateRecord($table, $data, $k)
		{
			return $this->updateObject($this->getPrefix().$table, $data, $k);
		}

		/**
		 * Insert a record
		 * 
		 * @param string table
		 * @param array data
		 * return boolean
		 */
		function insertRecord($table, $data)
		{
			return $this->insertObject($this->getPrefix().$table, $data);
		}

	}

?>
