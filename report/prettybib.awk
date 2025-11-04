BEGIN{FS=""}
{
	gsub(/^[ \t]+/,"",$0)
	for(i=1;i<=NF;i++) 
		if($i=="{") {
			lvl++;
			printf("{");
		}else if($i == "}"){
			if(lvl == 1)
				print("")
			lvl--;
			printf("}");
			if(lvl == 0)
				print("");
		}else if($i == "," && lvl == 1){
			print(",");
			for (k=0;k<lvl;k++)
				printf("    ");
		}else
			printf("%s",$i);

}
