(printf " ... loading pdk specific skill ... \n")

;; This file will be centralized soon.
;; J Jacob Wikner
;;

(setq daisyilPath 
      (strcat (getShellEnvVar "WORKAREA") 
	      "/daisy/pdkSpecific/" 
	      (getShellEnvVar "CDSPROCESSNAME") 
	      "/skill/"))

;;

(if (not (boundp 'onlyOcean)) 
    (setq onlyOcean nil))

(setq ilLoadList 
      (list 
       "pdkEnv" 
       "libInit" 
       ;;        "daisyLeModsSpec"
       ))

(foreach file 
	 (if onlyOcean 
	     ilLoadList 
	   (append 	
	    ilLoadList 
	    (list 
	     "libInit"
	     
	     ;;	     "daisyMultiPaths" 
	     ;;	     "daisyMGC"
	     "cyUseful"
	     "daisyBindkeys" 
	     )))
	 
	 (loadi (strcat daisyilPath 
			file 
			".il")))

(loadi (strcat (getShellEnvVar "UNICAD_KERNEL_ROOT") 
	       "/Uker.ile"))
