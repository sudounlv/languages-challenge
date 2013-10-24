<?php
 
    $input = "zapposisanawesomeplacetowork";
 
    #tracking variables
    $maxLength = 0;
    $seen = array();
 
    $i = 0;
    for($j = 0; $j<strlen($input); $j++){
        //If the value hasn't been seen then add it and move on
        if(!in_array($input[$j], $seen)){
            $seen[ord($input[$j])] = $input[$j];
        }
        else{
            //Determine if this string is the max value
            $maxLength = max($maxLength, $j-$i);
 
            //Move the start pointer to the same position
            while($input[$i] != $input[$j]){
                unset($seen[ord($input[$i])]);
                $i++;
            }
            //Move pointer just past current spot
            $i++;
        }
    }
 
    echo "Longest unique string: $maxLength \n";
 
 
?>
