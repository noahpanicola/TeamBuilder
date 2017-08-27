<?php

class AppSettings {

    public $ID;
    public $Category;
    public $SettingName;
    public $SettingValue;
    public $Description;
    public $GuiDisplay;
    public $DataType;

    function __construct($cat, $name){
        $this->setDefault();
        $this->populateFromName($cat, $name);
    }

    function setDefault(){
        $this->ID = -1;
        $this->Category = '';
        $this->SettingName = '';
        $this->SettingValue = '';
        $this->Description = '';
        $this->GuiDisplay = '';
        $this->DataType = '';
    }

    function populateFromName($cat, $name){
        include '/Applications/MAMP/htdocs/1.0.0/Config/CONFIG.php';

        $conn = new mysqli($HOSTNAME, $USERNAME, $PASSWORD, $DATABASE);
        $query = "SELECT * FROM AppSettings WHERE Category=? AND SettingName=?";

        if ($conn->connect_error) {
        	echo "mysql: error connecting to db";
        	return FALSE;
    	}

    	$stmt = $conn->prepare($query);
    	$stmt->bind_param("ss", $cat, $name);
    	$stmt->execute();

    	$result = $stmt->get_result();
    	$exists = $result->num_rows;
        if($exists != 1){ return FALSE; }

        while ($row = $result->fetch_assoc()) {
        	$this->ID = $row["ID"];
            $this->Category = $row["Category"];
            $this->SettingName = $row["SettingName"];
            $this->SettingValue = $row["SettingValue"];
            $this->Description = $row["Description"];
            $this->GuiDisplay = $row["GuiDisplay"];
            $this->DataType = $row["DataType"];
    	}

        return TRUE;
    }

    function printSetting(){
        if($this->ID != -1){
            echo "-----------------------<br>" .
                $this->ID . "<br>" .
                $this->Category . "<br>" .
                $this->SettingName . "<br>" .
                $this->SettingValue . "<br>" .
                $this->Description . "<br>" .
                $this->GuiDisplay . "<br>" .
                $this->DataType . "<br>" .
                "-----------------------";
        }
    }

}

?>