#!/bin/env perl
#
# this script makes an entry in the operator log
# based on the Moeller measurement
#
#
#use lib ("/home/hovanes/INGRES");
use OPLOG;

use Pezca; 
use Tk;


#Check if this is an authomatic log entry 
$AutoMode = 0 ;
foreach( @ARGV )
  {
    if ( $_ =~ /AUTO/i )      
      {
	$AutoMode = 1 ;
      }
  }

#Nake the default comment string 
if ( $AutoMode ) 
  {
    $comment_string = 'This is an Automatic Log Entry ' ;
  }
else
  {
    $comment_string = 'Please enter informational comments here and click "Make Log Entry"\n';
  }

if ( $AutoMode == 0 ) 
  {
    # create the text entry widget
    $tk_main = MainWindow->new;
    
    my $tk_label = $tk_main -> Label(-text=>'Moeller Log Entry Comments');
    $tk_label -> pack;
    $tk_text = $tk_main->Scrolled(Text,
				     -relief => sunken,
				     -borderwidth => 2,
				     -setgrid => true,
				     -width => 80,
				     -height => 20,
				     -scrollbars=>'e'
				    );
    
    my $tk_ok_button = $tk_main->Button(-text => 'Make Log Entry',
                    -command => [\&make_elog_entry, $tk_text]);
    my $tk_dismiss = $tk_main->Button(-text=>'DISMISS',
				      -command=>[$tk_main => 'destroy']);
    $tk_text->insert('0.0',$comment_string);
    $tk_text->mark(qw/set insert 0.0/);
    
    $tk_text->pack(qw/-expand yes -fill both/);
    $tk_ok_button -> pack(-side=> 'left',
			  -padx=>2);
    $tk_dismiss -> pack(-side=>'right',
			-padx=>2);
    
    MainLoop;
  }
else
  {

    &make_elog_entry ( $comment_string ) ;
  }


sub make_elog_entry {
  local $my_text;
  $my_text = $_[0]; 
  if ( $AutoMode )
    {
      $comment = $my_text;
    }
  else 
    {    
      $comment = $my_text->get('1.0','end');  
      $tk_main ->destroy();    
    }

#    $database = 'clastest';
    $database = 'clasprod';
    if ($database =~ /clasprod/) {
#    if ($database =~ /clastest/) {
	$prev_id = 15079;
    } else {
	$prev_id = 15079;
    }

    $oplog = new OPLOG(database      => $database,
		       system_type   => 'beam',
		       lost_time     => '0',
		       email_address => 'stepanya@jlab.org',
		       subject       => 'Moeller Measurement',
		       entry_type    => 'routine',
		       operators     => 'CLAS shift takers',
		       prev_id       => $prev_id
		       );

    $run = $oplog->GET_RUN_NUMBER();
    $oplog -> OPLOG_SET(run => $run);
    
    $date_time = $oplog->GET_DATE_TIME();
    $oplog -> OPLOG_SET(entry_date => $date_time);
    
    $data_string = &MAKE_STRING;


    $comment =~ s/\'/\'\'/g;
    $comment .= "\n$data_string";

    $oplog -> OPLOG_SET(comment    => $comment );
 

    $ok = $oplog -> OPLOG_MAKE_ENTRY();
    
    $key = $oplog->GET_UNIQUE_SEQ();

    $lok = $oplog-> OPLOG_DISCONNECT();


}
sub MAKE_STRING {
  my @records = qw { 
		    dynab_sug_set hallb_sf_xy560_0_14   
		    dynac_sug_set hallb_sf_xy560_0_18   
		    B_hv_BM_MOLLER_L_property.F B_hv_BM_MOLLER_R_property.F  
		    scaler_dS7b.VAL scaler_dS8b.VAL    
		    beam_polarization beam_polarization_error 
		    hallb_sf_xy560_0_19  moeller_target.RBV  TMIRBCK 
		    hallb_IPM2C21A_XPOS hallb_IPM2C21A_YPOS   
		    hallb_IPM2C21A_CUR scaler_calc2  scaler_calc1 
		    HELTSETTLEd HELDELAYd HELPATTERNd  HELFREQ  
		    SMRPOSB VWienAngle HWienAngle Phi_FG IGL1I00DI24_24M IGL1I00DIOHWTB.B2         
		    IGL1I00HALLBMODE IGL1I00DAC2 psub_ab_pos   
		   };

 
  foreach $r (@records) {
#    print "Getting record $r \n" ;
    ($errcode, $val{$r}) = Pezca::GetDouble($r);
#    print "Read $val{$r} for record $r \n";
  }
  

  my @dump_records = qw { moller_error_calc moller_error_bot 
			  moller_error_top1 moller_error_top2
			  moller_polarization_calc  moller_polarization_raw 
			  moller_LR_sum_pos_calc moller_LR_sum_neg_calc 
			  moller_ACCID_sum_pos_calc  moller_ACCID_sum_neg_calc 
			  moller_SLM_sum_pos_calc moller_SLM_sum_neg_calc  
			  moller_LR_sum_pos moller_LR_sum_neg 
			  moller_ACCID_sum_pos moller_ACCID_sum_neg
			  moller_SLM_sum_pos moller_SLM_sum_neg 
			  beam_polarization beam_polarization_error 
			  sum_plus_5 sum_minus_5 sum_plus_6 sum_minus_6 
			  sum_plus_3 sum_minus_3 moller_accumulate 
			  moller_reset moller_reset_LR_sum_pos moller_reset_LR_sum_neg 
			  moller_reset_ACCID_sum_pos moller_reset_ACCID_sum_neg 
			  moller_reset_SLM_sum_pos moller_reset_SLM_sum_neg 
			  moller_reset_ranout };


  $str  = "<pre>\n";

  $str .= sprintf("Measured Polarization:  %9.3f +-%5.2f \n\n", 
		  $val{beam_polarization}, $val{beam_polarization_error} );

  $str .= sprintf("Here is some more info about this Moeller run \n");
  $str .= sprintf("   -------------------------------------------------------------------------------- \n");

  $str .= sprintf("Upstream Quad  Set:   %8.3f      Upstream Quad Read:   %8.3f \n", 
		  $val{dynab_sug_set}, $val{hallb_sf_xy560_0_14});
  $str .= sprintf("Downstream Quad  Set: %8.3f      Downstream Quad Read: %8.3f \n", 
		  $val{dynac_sug_set}, $val{hallb_sf_xy560_0_18});
  $str .= sprintf("Left PMT:             %8.3f      Right PMT:            %8.3f \n", 
		  $val{'B_hv_BM_MOLLER_L_property.F'}, $val{'B_hv_BM_MOLLER_R_property.F'} );
  $str .= sprintf("Helmholtz current:    %8.3f      Target Position       %8.3f    Tagger current %8.3f  \n", 
		  $val{hallb_sf_xy560_0_19}, $val{'moeller_target.RBV'}, $val{TMIRBCK});
  $str .= sprintf("2C21 X:               %8.3f      2C21 Y:               %8.3f \n", 
		  $val{hallb_IPM2C21A_XPOS}, $val{hallb_IPM2C21A_YPOS} );
  $str .= sprintf("2C21 Current:         %8.3f      SLM Current:          %8.3f    FCUP Current:  %8.3f  \n", 
		   $val{hallb_IPM2C21A_CUR}, $val{scaler_calc2}, $val{scaler_calc1} );
  $str .= sprintf("Slit size:            %8.3f      1/2 waveplate:        %8.3f    2nd HWP:       %8.3f  \n", 
		  $val{SMRPOSB}, $val{IGL1I00DI24_24M}, $val{'IGL1I00DIOHWTB.B2'} );
  $str .= sprintf("Horizontal Wien Angle:%8.3f      Vertical Wien Angle:  %8.3f    Phi_FG:        %8.3f  \n", 
		  $val{HWienAngle}, $val{VWienAngle}, $val{Phi_FG} );
  $str .= sprintf("Settle time:          %8.3f      Flip Frequency:       %8.3f \n", 
		  $val{HELTSETTLEd}, $val{HELFREQ} );
  $str .= sprintf("Delay Mode:           %8.3f      Pattern:              %8.3f  \n", 
		  $val{HELDELAYd}, $val{HELPATTERNd} );

  $str .= sprintf("Mode:                 %8.3f      Laser Power:          %8.3f    Attenuator:    %8.3f  \n", 
		  $val{IGL1I00HALLBMODE}, $val{IGL1I00DAC2}, $val{psub_ab_pos } );
  $str .= sprintf("True Rates:           %8.3f      Accidental Rates      %8.3f \n", 
		  $val{'scaler_dS7b.VAL'}, $val{'scaler_dS8b.VAL'} );

  $str .= "\n========================================================================\n"; 

  foreach $r (@dump_records) {
      ($errcode, $val{$r}) = Pezca::GetDouble($r);
      $str .= "$r  \=  $val{$r} \n";
  }

  $str .= "</pre>";
  return($str);
}

