<?php
    
Class Role {

    public $ID;
    public $Title;
    public $AuthLevel;
    public $CreateTeamAccess;
    public $EditTeamAccess;

    function __construct($id) {
        $this->setDefaults();
        $this->populate($id);
    }

    function setDefaults() {
        $this->ID = -1;
        $this->Title = '';
        $this->AuthLevel = '';
        $this->CreateTeamAccess = '';
        $this->EditTeamAccess = '';
    }

    function populate($id) {
        include '/Applications/MAMP/htdocs/1.0.0/Config/CONFIG.php';

        $conn = new mysqli($HOSTNAME, $USERNAME, $PASSWORD, $DATABASE);
        $query = "SELECT * FROM Role WHERE ID=?";

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
            $this->Title = $row["Title"];
            $this->AuthLevel = $row["AuthLevel"];
            $this->CreateTeamAccess = $row["CreateTeamAccess"];
            $this->EditTeamAccess = $row["EditTeamAccess"];
    	}
        return TRUE;
    }

    function debugPrint() {
        if($this->ID != -1){
            echo    "<h3>Role Info</h3>" .
                    "<ul>" .
                        "<li> ID: $this->ID </li>" .
                        "<li> Title: $this->Title </li>" .
                        "<li> AuthLevel: $this->AuthLevel </li>" .
                        "<li> CreateTeamAccess: $this->CreateTeamAccess </li>" .
                        "<li> EditTeamAccess: $this->EditTeamAccess </li>" .
                    "</ul>";
        }
    }

}

?>