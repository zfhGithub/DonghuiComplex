
 
    jQuery(function () {
      
        jQuery('#lanrenzhijia_m').delay(3000).slideDown();
        jQuery('a[name=close]').click(function () {
            jQuery('#lanrenzhijia_m').slideUp();
            jQuery('#lanrenzhijia_m').delay(5000).slideDown();
        });

        var flag = 0;
        jQuery('#rightArrow').on("click", function () {
            if (flag == 1) {
                jQuery("#floatDivBoxs").animate({ right: '-175px' }, 300);
                jQuery(this).animate({ right: '-5px' }, 300);
                jQuery(this).css('background-position', '0px 0');
                flag = 0;
            } else {
                jQuery("#floatDivBoxs").animate({ right: '0' }, 300);
                jQuery(this).animate({ right: '170px' }, 300);
                jQuery(this).css('background-position', '0px 0');
                flag = 1;
            }
        });

    });
      
        
 