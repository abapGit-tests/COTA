class ZCOTA_TEST definition
  public
  inheriting from CL_COMMUNICATION_TARGET_HTTP
  create public .

public section.

  methods CONSTRUCTOR
    importing
      value(APPLICATION_DESTINATION) type SAPPDESTNAME optional
    raising
      CX_APPDESTINATION
      CX_COMMUNICATION_TARGET_ERROR .
protected section.
private section.

  constants CID type CL_COMMUNICATION_TARGET_ROOT=>NAME_TYPE value 'ZCOTA_TEST' ##NO_TEXT.
  constants CMAINTYPE type MAIN_TYPE value HTTP ##NO_TEXT.
  constants CMULTIPLE_APPDESTS type ABAP_BOOL value 'X' ##NO_TEXT.
  constants CMULTITENANCY_MODE type CL_COMMUNICATION_TARGET_ROOT=>MULTITENANCY_MODE_TYPE value CL_COMMUNICATION_TARGET_ROOT=>CLIENT_INDEPENDENT ##NO_TEXT.
  constants CTEMPLATE_PATHPREFIX type STRING value '' ##NO_TEXT.
  constants Ccreated_by_cota type CL_COMMUNICATION_TARGET_ROOT=>NAME_TYPE value 'ZCOTA_TEST' ##NO_TEXT.
ENDCLASS.



CLASS ZCOTA_TEST IMPLEMENTATION.


  method CONSTRUCTOR.
  SUPER->constructor(
    EXPORTING
      id = cid
      template_pathprefix = CTEMPLATE_PATHPREFIX
      SECKEY = CONV int8( '3455108091504676268-' )
      multitenancy_mode = CMULTITENANCY_MODE
      created_by_cota = Ccreated_by_cota
      multiple_appdests = CMULTIPLE_APPDESTS
      application_destination = application_destination
     ).
  endmethod.
ENDCLASS.
