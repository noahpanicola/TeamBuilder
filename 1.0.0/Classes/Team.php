<?php

Class Team {
    public $ID;
    public $Name;
    public $Type;
    public $TeamImage;
    public $Description;

    function __construct($id) {
        $this->setDefaults();
        $this->populate($id);
    }

    function setDefaults() {
        $this->ID = -1;
        $this->Name = '';
        $this->Type = '';
        $this->TeamImage = '';
        $this->Description = '';
    }

    function populate($id) {
        include '/Applications/MAMP/htdocs/1.0.0/Config/CONFIG.php';

        $conn = new mysqli($HOSTNAME, $USERNAME, $PASSWORD, $DATABASE);
        $query = "SELECT * FROM Team WHERE ID=?";

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
            $this->Type = $row["Type"];
            $this->TeamImage = $row["TeamImage"];
            $this->Description = $row["Description"];
    	}
        return TRUE;
    }

    function debugPrint() {
        if($this->ID != -1){
            echo    "<h3>Team Info</h3>" .
                    "<ul>" .
                        "<li> ID: $this->ID </li>" .
                        "<li> Name: $this->Name </li>" .
                        "<li> Type: $this->Type </li>" .
                        "<li> TeamImage: $this->TeamImage </li>" .
                        "<li> Description: $this->Description </li>" .
                    "</ul>";
        }
    }
}

Class TeamCollection {

    public $TeamArray;

    function __construct() {
        $this->setDefaults();
    }

    function setDefaults() {
        $this->TeamArray = array();
        $this->Count = 0;
    }

    function getAll() {
        include '/Applications/MAMP/htdocs/1.0.0/Config/CONFIG.php';

        $conn = new mysqli($HOSTNAME, $USERNAME, $PASSWORD, $DATABASE);
        $query = "SELECT ID FROM Team";
        $arr = array();

        if ($conn->connect_error) {
        	echo "mysql: error connecting to db";
        	return FALSE;
    	}

    	$stmt = $conn->prepare($query);
    	$stmt->execute();

    	$result = $stmt->get_result();
    	$exists = $result->num_rows;
        if($exists == 0){ return FALSE; }

        while ($row = $result->fetch_assoc()) {
            $t = new Team($row["ID"]);
            array_push($arr, $t);
    	}

        $this->TeamArray = $arr;
        return json_encode($this->TeamArray);
    }

    function getTeamFromUser($id) {
        return $id;
    }
}

?>