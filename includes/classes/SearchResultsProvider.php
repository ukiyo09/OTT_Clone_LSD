<?php 

class SearchResultsProvider {
   
    private $connection, $username;

    public function  __construct($con, $username){
        $this->con = $con;
        $this->username = $username;
    }

    public function getResults($inputText){
        $entity = EntityProvider::getSearchEntities($this->con , $inputText);
        
        if($entity == false){
            return 'No show or movie found with this name.';
        }          
 
        $html = "<div class='previewCategories noScroll'>";
        $html.= $this->getResultHtml($entity);

        return $html . "</div>"; 
    }

    private function  getResultHtml($entities){
       
        if(sizeof($entities) == 0) {
            return;
        }
     
        $previewProvider = new PreviewProvider($this->con, $this->username);
        $entitiesHtml = "";
        foreach($entities as $entity) {
            $entitiesHtml .= $previewProvider->createEntityPreviewSquare($entity);
        }

        return "<div class='entities'>
                    $entitiesHtml
                </div>";
    }
}
?>