<?

/*
 * utility functions for course web sites
 */

function show_current_directory() {

      // print prefix
      print("<hr/><div id='container' style='margin-left:40px;margin-right:40px;margin-top:10px;margin-bottom:10px; border:1px solid black;'>
            <table class='sortable' align='center'>
             <thead>
               <tr><th>Filename</th><th>Type</th><th>Size (bytes)</th><th>Date Modified</th></tr>
             </thead>
           <tbody>");

      // Opens directory
      $myDirectory=opendir(".");
      
      // Gets each entry
      while($entryName=readdir($myDirectory)) {
        $dirArray[]=$entryName;
      }
      
      // Finds extensions of files
      function findexts ($filename) {
        $filename=strtolower($filename);
        $exts=preg_split("[/\\.]", $filename);
        $n=count($exts)-1;
        $exts=$exts[$n];
        return $exts;
      }
      
      // Closes directory
      closedir($myDirectory);
      
      // Counts elements in array and sort
      $indexCount=count($dirArray);
      sort($dirArray);

      // Loops through the array of files printing each as a table row
      for($index=0; $index < $indexCount; $index++) {
      
        // Allows ./?hidden to show hidden files
        if(false && $_SERVER['QUERY_STRING']=="hidden")
          {$hide="";
           $ahref="./";
           $atext="Hide";}
        else
          {$hide=".";
           $ahref="./?hidden";
           $atext="Show";}

        $name=$dirArray[$index];

        if (! (substr($name,0,1) === $hide or substr($name,0,5) === "index")) {
        //if(substr($name, 0, 1) != $hide) { 
        
        // Gets File Names, extensions and size
        $namehref=$dirArray[$index];
        $extn=findexts($dirArray[$index]); 
        $size=number_format(filesize($dirArray[$index]));
        
        // Gets Date Modified Data
        $modtime=date("M j Y g:i A", filemtime($dirArray[$index]));
        $timekey=date("YmdHis", filemtime($dirArray[$index]));
        
        // Prettifies File Types, add more to suit your needs.
        switch ($extn){
          case "png": $extn="PNG Image"; break;
          case "jpg": $extn="JPEG Image"; break;
          case "svg": $extn="SVG Image"; break;
          case "gif": $extn="GIF Image"; break;
          case "ico": $extn="Windows Icon"; break;
          case "txt": $extn="Text File"; break;
          case "log": $extn="Log File"; break;
          case "htm": $extn="HTML File"; break;
          case "php": $extn="PHP Script"; break;
          case "js": $extn="Javascript"; break;
          case "css": $extn="Stylesheet"; break;
          case "pdf": $extn="PDF Document"; break;
          case "zip": $extn="ZIP Archive"; break;
          case "bak": $extn="Backup File"; break;
          case "py": $extn="Python code"; break;
          default: $extn=strtoupper($extn)." File"; break;
        }
        
        // Separates directories
        if(is_dir($dirArray[$index])) {
          $extn="<i>directory</i>"; 
          $size="--"; 
          $class="dir";
        } else {
          $class="file";
        }
        
        // Cleans up . and .. directories 
        if($name=="."){$name=". (Current Directory)"; $extn="&lt;System Dir&gt;";}
        if($name==".."){$name=".. (Parent Directory)"; $extn="&lt;System Dir&gt;";}
        
        // Print a row
        print("
             <tr class='$class'>
               <td><a href='./$namehref'>$name</a></td>
               <td>$extn</td>
               <td>$size</td>
               <td sorttable_customkey='$timekey'>$modtime</td>
             </tr>");

        }
      }

      // print postfix
      print("</table></div>");
}
