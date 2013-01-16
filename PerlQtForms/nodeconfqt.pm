# This dialog was created using MakePerlQtForm.bsh
# Use DesignPerlQtForm.bsh to edit the form and automatically rebuild source files.

package nodeconfqt;
use File::Find;
use Qt;
use nodeconfqtGUI;
use Qt::isa "nodeconfqtGUI";
use Qt::slots
	openFileSlot => [],
	saveFileSlot => [],
	printDirSlot => [],
	saveDirSlot  => [];

#Fill before process function

my $NEW_NODENAME;
my $NEW_TYPE;
my $NEW_OWNERID;
my $NEW_ADDRESS;
my $NEW_PORT;
my $NEW_ARM_MANAGER;
my $NEW_ARM_MANAGER_NODE;
my $NEW_ARM_MANAGER_ADDRESS;
my $NEW_ARM_MANAGER_PORT;
my $NEW_TEMPLATES_SOURCE;
my $NEW_TEMPLATES_SOURCE_NODE;
my $NEW_OBJECT_MANAGER;
my $NEW_OBJECT_MANAGER_NODE;
my $NEW_CONFIGURATION_DB;
my $NEW_CONFIGVERSION;
my $NEW_DEFAULT_USER;
my $NEW_DEBUGLEVEL;

my $NODENAME;
my $TYPE;
my $OWNERID;
my $ADDRESS;
my $PORT;
my $ARM_MANAGER;
my $ARM_MANAGER_NODE;
my $ARM_MANAGER_ADDRESS;
my $ARM_MANAGER_PORT;
my $TEMPLATES_SOURCE;
my $TEMPLATES_SOURCE_NODE;
my $OBJECT_MANAGER;
my $OBJECT_MANAGER_NODE;
my $CONFIGURATION_DB;
my $CONFIGVERSION;
my $DEFAULT_USER;
my $DEBUGLEVEL;

my $file                = $ARGV[0];
my $fileOpened = 0;
my @strippedNodeName;
my @strippedNewNodeName;
my $replace;
my $search;

my $found_name          = 0;
my $found_type          = 0;
my $found_debuglevel 	= 0;
my $found_configversion = 0;
my $match               = 0;
my $line_nr             = 0;
my $string;

sub resetNew{
	undef $NEW_NODENAME;
	undef $NEW_TYPE;
	undef $NEW_OWNERID;
	undef $NEW_ADDRESS;
	undef $NEW_PORT;
	undef $NEW_ARM_MANAGER;
    undef $NEW_ARM_MANAGER_NODE;
    undef $NEW_ARM_MANAGER_ADDRESS;
    undef $NEW_ARM_MANAGER_PORT;
    undef $NEW_TEMPLATES_SOURCE;
    undef $NEW_TEMPLATES_SOURCE_NODE;
    undef $NEW_OBJECT_MANAGER;
    undef $NEW_OBJECT_MANAGER_NODE;
    undef $NEW_CONFIGURATION_DB;
	undef $NEW_DEBUGLEVEL;
	undef $NEW_DEFAULT_USER;
    undef $NEW_CONFIGVERSION;
} 

sub resetVars{
   undef $NODENAME;
   undef $TYPE; 
   undef $OWNERID;
   undef $ADDRESS;
   undef $PORT;
   undef $ARM_MANAGER;
   undef $ARM_MANAGER_NODE;
   undef $ARM_MANAGER_ADDRESS;
   undef $ARM_MANAGER_PORT;
   undef $TEMPLATES_SOURCE; 
   undef $TEMPLATES_SOURCE_NODE;
   undef $OBJECT_MANAGER;
   undef $OBJECT_MANAGER_NODE;
   undef $CONFIGURATION_DB;
   undef $DEBUGLEVEL;
   undef $DEFAULT_USER;
   undef $CONFIGVERSION;
}

sub errorCheck {
	my $errormessage = "Can't find match..";
	if ( !defined($NODENAME) ) 	           {    $NODENAME = $errormessage;    }
	if ( !defined($TYPE) ) 		           {    $TYPE = $errormessage;        }
	if ( !defined($OWNERID) ) 	           {    $OWNERID = $errormessage;     }
	if ( !defined($ADDRESS) )	           {    $ADDRESS = $errormessage;     }
	if ( !defined($NODENAME) ) 	       	   {    $NODENAME = $errormessage;    }
	if ( !defined($PORT) ) 	               {    $PORT = $errormessage;	 }
	if ( !defined($ARM_MANAGER) )          {    $ARM_MANAGER = $errormessage; }
	if ( !defined($ARM_MANAGER_NODE) )     {    $ARM_MANAGER_NODE = $errormessage; }
	if ( !defined($ARM_MANAGER_ADDRESS) )  {    $ARM_MANAGER_ADDRESS = $errormessage; }
	if ( !defined($ARM_MANAGER_PORT))      {    $ARM_MANAGER_PORT = $errormessage;  }
	if ( !defined($TEMPLATES_SOURCE_NODE)) {    $TEMPLATES_SOURCE_NODE = $errormessage; }
	if ( !defined($TEMPLATES_SOURCE) )     {    $TEMPLATES_SOURCE = $errormessage; }
	if ( !defined($OBJECT_MANAGER_NODE) )  {    $OBJECT_MANAGER_NODE = $errormessage; }
	if ( !defined($OBJECT_MANAGER) )       {    $OBJECT_MANAGER = $errormessage; }
	if ( !defined($CONFIGURATION_DB) )     {    $CONFIGURATION_DB = $errormessage; }
	if ( !defined($CONFIGVERSION) )        {    $CONFIGVERSION = $errormessage; }
	if ( !defined($DEFAULT_USER) )         {    $DEFAULT_USER = $errormessage; }
	if ( !defined($DEBUGLEVEL) )           {    $DEBUGLEVEL = $errormessage; }
}

sub printConfiguration {
#	print "\nConfiguration Information\n";
	print "\nFileLocation: $file\n";
	print "\n1. Objectname = $NODENAME \n";
	print "2. Type	      = $TYPE \n";
	print "3. Ownerid    = $OWNERID \n";
	print "4. Address    = $ADDRESS \n";
	print "5. Port       = $PORT \n\n";
	print "6.  Arm Manager           = $ARM_MANAGER \n";
	print "7.  Arm Manager Node      = $ARM_MANAGER_NODE \n";
	print "8.  Arm Manager Address   = $ARM_MANAGER_ADDRESS \n";
	print "9.  Arm Manager Port      = $ARM_MANAGER_PORT \n\n";
	print "10. Templates Source Node = $TEMPLATES_SOURCE_NODE \n";
	print "11. Templates Source      = $TEMPLATES_SOURCE \n\n";
	print "12. Object Manager Node   = $OBJECT_MANAGER_NODE \n";
	print "13. Object Manager 	  = $OBJECT_MANAGER \n\n";
	print "14. Configuration DB      = $CONFIGURATION_DB \n \n";
	print "15. Debug Level	 	  = $DEBUGLEVEL \n";
	print "16. Default user	  = $DEFAULT_USER \n";
	print "17. Configversion 	  = $CONFIGVERSION \n\n\n";
}

sub process_file {
	if($directoryMode) {
		$file = $File::Find::name;
	}	
	if ( $file =~ /xml$/ ) {
		#Open file for reading and copy file contents into array		
		open( FILE, "<$file" ) or die "Can't open input file\n";
		#Qt::MessageBox::information(this,"", "Can't open file, check file permissions", &Qt::MessageBox::Ok, 0);
		
		my @lines = <FILE>;
		close FILE;
	
		open( FILE, ">$file") or die "Can't open $file: $!\n";
  	 #if(	open( FILE, ">$file" ) ) {
	#		Qt::MessageBox::information(this,"", "Can't open $file: $!\n", &Qt::MessageBox::Ok, 0) ;
	#		exit 1;
	#	}

		foreach $string (@lines) {
			#Just get the nodename
			if ( $string =~ /<OBJECT name/ && $found_name == 0 ) {
				$found_name = 1;
				($NODENAME) = $string =~ /name="([^"]+)"/;
				if($string =~ /_PRESNODE/) {
					@strippedNodeName = split("_PRESNODE", $NODENAME);
				}
				if($string =~ /_DSSNODE/) {
					@strippedNodeName = split("_DSSNODE", $NODENAME);
				}
			}
			#replace nodename if a new nodename is defined 
			#Also replace all objectnames without the _PRESNODE or _DSSNODE string
			if ( $string =~ /@strippedNodeName/ &&  defined($NEW_NODENAME) ) {
				if($string =~ /_PRESNODE/) {
					@strippedNewNodeName = split("_PRESNODE", $NEW_NODENAME);
				}
				if($string =~ /_DSSNODE/) {
					@strippedNewNodeName = split("_DSSNODE", $NEW_NODENAME);
				}
				$replace = $strippedNewNodeName[0];
				$search = $strippedNodeName[0];
				$string =~ s/$search/$replace/g;				
				$NODENAME = $NEW_NODENAME;
 			}
			if ( $string =~ /TYPE/ && $found_type == 0 ) {
				$found_type = 1;
				if ( defined($NEW_TYPE) ) {
					$string =~ s/value=".*"/value="$NEW_TYPE" userlevel="5" defaultvalue="" unit=""/g;
				}
				($TYPE) = $string =~ /value="([^"]+)"/;
			}
			if ( $string =~ /CONFIGVERSION/ && $found_configversion == 0 ) {
				$found_configversion = 1;
				if ( defined($NEW_CONFIGVERSION) ) {
					$string =~ s/value=".*"/value="$NEW_CONFIGVERSION" userlevel="7" defaultvalue="1" unit=""/g;
				}
				($CONFIGVERSION) = $string =~ /value="([^"]+)"/;
			}
			
			if ( $string =~ /DEFAULT_USER/ ) {
				if ( defined($NEW_DEFAULT_USER) ) {
					$string =~s/value=".*"/value="$NEW_DEFAULT_USER" userlevel="7" defaultvalue="" unit=""/g;
				}
				($DEFAULT_USER) = $string =~ /value="([^"]+)"/;
			}			

			if ( $string =~ /DEBUGLEVEL/ && $found_debuglevel == 0  ) {
				$found_debuglevel = 1;
				if ( defined($NEW_DEBUGLEVEL) ) {
					$string =~ s/value=".*"/value="$NEW_DEBUGLEVEL" userlevel="7" defaultvalue="0" unit=""/g;
				}
				($DEBUGLEVEL) = $string =~ /value="([^"]+)"/;
			}		
			
			if ( $string =~ /DATABLOCKS/ ) {
				$match   = 1;
				$line_nr = 0;    #line_nr after DATABLOCKS detection
			}
			else {
				if ( $match == 1 ) {    #Processing found DATABLOCKS
					$line_nr++;
					if ( $line_nr == 4 ) {
						if ( $string =~ /OBJECT_MANAGER/ ) {
							if ( defined($NEW_OBJECT_MANAGER) ) {
								$string =~ s/value=".*"/value="$NEW_OBJECT_MANAGER" userlevel="5" defaultvalue="" unit=""/g;
							}
							($OBJECT_MANAGER) = $string =~ /value="([^"]+)"/;
							if ( !defined($OBJECT_MANAGER) ) {
								($OBJECT_MANAGER) = " "
								  ; #Found object manager but value appears to be empty, initialize empty string..
							} #else we get a "Use of uninitialized value" error..
						}
						if ( $string =~ /ADDRESS/ ) {
							if ( defined($NEW_ADDRESS) ) {
								$string =~ s/value=".*"/value="$NEW_ADDRESS" userlevel="3" defaultvalue="" unit=""/g;
							}
							($ADDRESS) = $string =~ /value="([^"]+)"/;
							if ( !defined($ADDRESS) ) {
								($ADDRESS) = " ";
							}
						}
					}
					if ( $line_nr == 5 ) {
						if ( $string =~ /TEMPLATES_SOURCE/ ) {
							if ( defined($NEW_TEMPLATES_SOURCE) ) {
								$string =~ s/value=".*"/value="$NEW_TEMPLATES_SOURCE" userlevel="5" defaultvalue="" unit=""/g;
							}
							($TEMPLATES_SOURCE) = $string =~ /value="([^"]+)"/;
							if ( !defined($TEMPLATES_SOURCE) ) {
								($TEMPLATES_SOURCE) = " ";
							}
						}
						if ( $string =~ /PORT/ ) {
							if ( defined($NEW_PORT) ) {
								$string =~ s/value=".*"/value="$NEW_PORT" userlevel="3" defaultvalue="" unit=""/g;
							}
							($PORT) = $string =~ /value="([^"]+)"/;
							if ( !defined($PORT) ) {
								($PORT) = " ";
							}
						}
						if ( $string =~ /OBJECT_MANAGER_NODE/ ) {
							if ( defined($NEW_OBJECT_MANAGER_NODE) ) {
								$string =~ s/value=".*"/value="$NEW_OBJECT_MANAGER_NODE" userlevel="5" defaultvalue="" unit=""/g;
								($NEW_OBJECT_MANAGER_NODE) =
								  $string =~ /value="([^"]+)"/;
							}
							($OBJECT_MANAGER_NODE) =
							  $string =~ /value="([^"]+)"/;
							if ( !defined($OBJECT_MANAGER_NODE) ) {
								($OBJECT_MANAGER_NODE) = " ";
							}
						}
					}
					if ( $line_nr == 6 ) {
						if ( $string =~ /TEMPLATES_SOURCE_NODE/ ) {
							if ( defined($NEW_TEMPLATES_SOURCE_NODE) ) {
								$string =~ s/value=".*"/value="$NEW_TEMPLATES_SOURCE_NODE" userlevel="5" defaultvalue="" unit=""/g;
							}
							($TEMPLATES_SOURCE_NODE) =
							  $string =~ /value="([^"]+)"/;
							if ( !defined($TEMPLATES_SOURCE_NODE) ) {
								($TEMPLATES_SOURCE_NODE) = " ";
							}
						}
						if ( $string =~ /CONFIGURATION_DB/ ) {
							if ( defined($NEW_CONFIGURATION_DB) ) {
								$string =~ s/value=".*"/value="$NEW_CONFIGURATION_DB" userlevel="5" defaultvalue="" unit=""/g;
							}
							($CONFIGURATION_DB) = $string =~ /value="([^"]+)"/;
							if ( !defined($CONFIGURATION_DB) ) {
								($CONFIGURATION_DB) = " ";
							}
						}
					}
					if ( $line_nr == 8 ) {
						if ( $string =~ /ARM_MANAGER/ ) {
							if ( defined($NEW_ARM_MANAGER) ) {
								$string =~ s/value=".*"/value="$NEW_ARM_MANAGER" userlevel="3" defaultvalue="" unit=""/g;
							}
							($ARM_MANAGER) = $string =~ /value="([^"]+)"/;
							if ( !defined($ARM_MANAGER) ) {
								($ARM_MANAGER) = " ";
							}
						}
					}
					if ( $line_nr == 9 ) {
						if ( $string =~ /ARM_MANAGER_NODE/ ) {
							if ( defined($NEW_ARM_MANAGER_NODE) ) {
								$string =~ s/value=".*"/value="$NEW_ARM_MANAGER_NODE" userlevel="3" defaultvalue="" unit=""/g;
							}
							($ARM_MANAGER_NODE) = $string =~ /value="([^"]+)"/;
							if ( !defined($ARM_MANAGER_NODE) ) {
								($ARM_MANAGER_NODE) = " ";
							}
						}
					}
					if ( $line_nr == 10 ) {
						if ( $string =~ /ARM_MANAGER_ADDRESS/ ) {
							if ( defined($NEW_ARM_MANAGER_ADDRESS) ) {
								$string =~ s/value=".*"/value="$NEW_ARM_MANAGER_ADDRESS" userlevel="3" defaultvalue="" unit=""/g;
							}
							($ARM_MANAGER_ADDRESS) =
							  $string =~ /value="([^"]+)"/;
							if ( !defined($ARM_MANAGER_ADDRESS) ) {
								($ARM_MANAGER_ADDRESS) = " ";
							}
						}
					}
					if ( $line_nr == 11 ) {
						if ( $string =~ /OWNERID/ ) {
							if ( defined($NEW_OWNERID) ) {
								$string =~ s/value=".*"/value="$NEW_OWNERID" userlevel="7" defaultvalue="" unit=""/g;
							}
							($OWNERID) = $string =~ /value="([^"]+)"/;
							if ( !defined($OWNERID) ) {
								($OWNERID) = " ";
							}
						}
						if ( $string =~ /ARM_MANAGER_PORT/ ) {
							if ( defined($NEW_ARM_MANAGER_PORT) ) {
								$string =~ s/value=".*"/value="$NEW_ARM_MANAGER_PORT" userlevel="3" defaultvalue="" unit=""/g;
							}
							($ARM_MANAGER_PORT) = $string =~ /value="([^"]+)"/;
							if ( !defined($ARM_MANAGER_PORT) ) {
								($ARM_MANAGER_PORT) = " ";
							}
						}
					}
					if ( $line_nr == 13 ) {    # End of this datablocks....
						$line_nr = 0;
						$match   = 0;
					}
				}
			}
			print FILE $string; #write line to file
		}

		$found_debuglevel    = 0;
		$found_name          = 0;
		$found_type          = 0;
		$found_configversion = 0;
		if($directoryMode) {
			errorCheck();
	  		printConfiguration();
	    	resetVars();
		}	
	}
	close(FILE);                               
}

sub fillLineEdit {
    this->lineEdit1->setText($NODENAME);
	this->lineEdit2->setText($TYPE);
	this->lineEdit3->setText($OWNERID);
	this->lineEdit4->setText($ADDRESS);
	this->lineEdit5->setText($PORT);
	this->lineEdit6->setText($ARM_MANAGER_NODE);
	this->lineEdit7->setText($ARM_MANAGER);
	this->lineEdit8->setText($ARM_MANAGER_ADDRESS);
	this->lineEdit9->setText($ARM_MANAGER_PORT);
	this->lineEdit10->setText($TEMPLATES_SOURCE_NODE);
	this->lineEdit11->setText($TEMPLATES_SOURCE);
	this->lineEdit12->setText($OBJECT_MANAGER_NODE);
	this->lineEdit13->setText($OBJECT_MANAGER);
	this->lineEdit14->setText($CONFIGURATION_DB);
	this->lineEdit15->setText($DEBUGLEVEL);
	this->lineEdit16->setText($DEFAULT_USER);
	this->lineEdit17->setText($CONFIGVERSION);	
}

sub getLineEdit {
	$NEW_NODENAME = this->lineEdit1->text;
	$NEW_TYPE = this->lineEdit2->text;
	$NEW_OWNERID= this->lineEdit3->text;
	$NEW_ADDRESS= this->lineEdit4->text;
	$NEW_PORT= this->lineEdit5->text;
    $NEW_ARM_MANAGER_NODE= this->lineEdit6->text;
	$NEW_ARM_MANAGER= this->lineEdit7->text;
    $NEW_ARM_MANAGER_ADDRESS= this->lineEdit8->text;
    $NEW_ARM_MANAGER_PORT= this->lineEdit9->text;
    $NEW_TEMPLATES_SOURCE_NODE= this->lineEdit10->text;
    $NEW_TEMPLATES_SOURCE= this->lineEdit11->text;
    $NEW_OBJECT_MANAGER_NODE= this->lineEdit12->text;
    $NEW_OBJECT_MANAGER= this->lineEdit13->text;
    $NEW_CONFIGURATION_DB= this->lineEdit14->text;
	$NEW_DEBUGLEVEL  = this->lineEdit15->text;  
	$NEW_DEFAULT_USER = this->lineEdit16->text;
    $NEW_CONFIGVERSION = this->lineEdit17->text;
}

sub getLineEditDir {
	if (this->lineEdit1_2->isModified() && ! (length(this->lineEdit1_2->text) == 0) ){
		$NEW_NODENAME = this->lineEdit1_2->text;
	} 
	if (this->lineEdit2_2->isModified() && ! (length(this->lineEdit2_2->text) == 0) ){
		$NEW_TYPE = this->lineEdit2_2->text;
	}
	if (this->lineEdit3_2->isModified() && ! (length(this->lineEdit3_2->text) == 0) ){
		$NEW_OWNERID= this->lineEdit3_2->text;
	}
	if (this->lineEdit4_2->isModified() && ! (length(this->lineEdit4_2->text) == 0) ){
		$NEW_ADDRESS= this->lineEdit4_2->text;
	}

	if (this->lineEdit5_2->isModified() && ! (length(this->lineEdit5_2->text) == 0)){
		$NEW_PORT= this->lineEdit5_2->text;
	}
	if (this->lineEdit6_2->isModified() && ! (length(this->lineEdit6_2->text) == 0)){
	    $NEW_ARM_MANAGER_NODE= this->lineEdit6_2->text;
	}
	if (this->lineEdit7_2->isModified() && ! (length(this->lineEdit7_2->text) == 0)){
		$NEW_ARM_MANAGER= this->lineEdit7_2->text;
	}
	if (this->lineEdit8_2->isModified() && ! (length(this->lineEdit8_2->text) == 0)){
	    $NEW_ARM_MANAGER_ADDRESS= this->lineEdit8_2->text;
	}
	if (this->lineEdit9_2->isModified() && ! (length(this->lineEdit9_2->text) == 0)){
	    $NEW_ARM_MANAGER_PORT= this->lineEdit9_2->text;
	}
	if (this->lineEdit10_2->isModified() && ! (length(this->lineEdit10_2->text) == 0)){
	    $NEW_TEMPLATES_SOURCE_NODE= this->lineEdit10_2->text;
	}
	if (this->lineEdit11_2->isModified() && ! (length(this->lineEdit11_2->text) == 0)){
	    $NEW_TEMPLATES_SOURCE= this->lineEdit11_2->text;
	}
	if (this->lineEdit12_2->isModified() && ! (length(this->lineEdit12_2->text) == 0)){
	    $NEW_OBJECT_MANAGER_NODE= this->lineEdit12_2->text;
	}
	if (this->lineEdit13_2->isModified() && ! (length(this->lineEdit13_2->text) == 0)){
	    $NEW_OBJECT_MANAGER= this->lineEdit13_2->text;
	}
	if (this->lineEdit14_2->isModified() && ! (length(this->lineEdit14_2->text) == 0)){
	    $NEW_CONFIGURATION_DB= this->lineEdit14_2->text;
	}
	if (this->lineEdit15_2->isModified() && ! (length(this->lineEdit15_2->text) == 0)){
		$NEW_DEBUGLEVEL  = this->lineEdit15_2->text;  
	}
	if (this->lineEdit16_2->isModified() && ! (length(this->lineEdit16_2->text) == 0)) {
		$NEW_DEFAULT_USER = this->lineEdit16_2->text;
	}
#	if (this->lineEdit17_2->isModified() ){
#	    $NEW_CONFIGVERSION = this->lineEdit17_2->text;
#	}
}



sub NEW {
	my $self = shift;
	$self->SUPER::NEW(@_);
	
	my $arg = shift;
	if( defined($arg)) {
		$file = $arg;
    	process_file();
  	  	errorCheck();
		fillLineEdit();
	}
	
	this->connect(this->pushButton1, SIGNAL('clicked()' ),SLOT('saveFileSlot()'));
	this->connect(this->pushButton2, SIGNAL('clicked()'), SLOT('openFileSlot()'));
	this->connect(this->pushButton3, SIGNAL('clicked()'), SLOT('printDirSlot()'));
	this->connect(this->pushButton1_2, SIGNAL('clicked()'), SLOT('saveDirSlot()'));
}

sub printDirSlot() {
	$directoryMode = 1;
	$dir = this->dirLineEdit->text;
	find(\&process_file, $dir);
	Qt::MessageBox::information(this,"", "Printed all nodes in $dir to the terminal", &Qt::MessageBox::Ok, 0);
}

sub saveDirSlot(){
	$directoryMode = 1;
	$dir = this->dirLineEdit->text;
	getLineEditDir();
	find(\&process_file, $dir);
	Qt::MessageBox::information(this,"", "Saved changes to all files in $dir", &Qt::MessageBox::Ok, 0);
}

sub openFileSlot {
	$directoryMode = 0;
    $file = Qt::FileDialog::getOpenFileName( this);
    process_file();
    errorCheck();
	fillLineEdit();
	if($file) {
		Qt::MessageBox::information(this,"", "$file loaded", &Qt::MessageBox::Ok, 0);
	}
}

sub saveFileSlot {
	$directoryMode = 0;
	getLineEdit();
	process_file();
	resetNew();
	fillLineEdit();
	Qt::MessageBox::information(this,"", "Saved changes to $file", &Qt::MessageBox::Ok, 0);
}

1;
