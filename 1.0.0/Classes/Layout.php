<?php

Class Layout {

    public $ID;
    public $Name;
    public $Title;
    public $ObjectCount;
    public $BackgroundColor;
    public $BackgroundImage;
    public $Description;

    function __construct() {
        $this->setDefaults();
    }

    function setDefaults() {
        $this->ID = -1;
        $this->Name = '';
        $this->Title = '';
        $this->ObjectCount = 0;
        $this->BackgroundColor = '';
        $this->BackgroundImage = '';
        $this->Description = '';
    }

    function populate($id) {
        include '/Applications/MAMP/htdocs/1.0.0/Config/CONFIG.php';

        $conn = new mysqli($HOSTNAME, $USERNAME, $PASSWORD, $DATABASE);
        $query = "SELECT * FROM Layout WHERE ID=?";

        if ($conn->connect_error) {
        	echo "mysql: error connecting to db";
        	return FALSE;
    	}

    	$stmt = $conn->prepare($query);
    	$stmt->bind_param("s", $id);
    	$stmt->execute();

    	$result = $stmt->get_result();
    	$exists = $result->num_rows;
        if($exists != 1){ return FALSE; }

        while ($row = $result->fetch_assoc()) {
        	$this->ID = $row["ID"];
            $this->Name = $row["Name"];
            $this->Title = $row["Title"];
            $this->ObjectCount = $row["ObjectCount"];
            $this->BackgroundColor = $row["BackgroundColor"];
            $this->BackgroundImage = $row["BackgroundImage"];
            $this->Description = $row["Description"];
    	}
        return TRUE;
    }

}

?>