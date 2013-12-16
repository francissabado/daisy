(put 'tf_funs 'symbol-type "technology file fun")
(setq tf_funs '(
("tfcDefineColor" "(S_displayName S_colorName x_index x_red x_green x_blue" "Creates or modifies a color for a display device.")
("tfcDefineDeviceClassProp" "(S_viewName S_className S_propName ntbl_propValue" "Defines a property for a device class.")
("tfcDefineDeviceProp" "(S_viewName S_deviceName S_propName ntbl_propValue" "Defines a property for a device.")
("tfcDefineDisplay" "(S_displayName x_#colors x_#stipples x_#lineStyles" "Defines information about the graphic display device, such as a plotter or display monitor.")
("tfcDefineLayer" "(S_layerName xS_purpose x_layer# S_fillStyle x_priority b_visible b_select b_blink [b_lsw]" "Creates a new layer or modifies an existing layer-purpose pair.")
("tfcDefineLayerDisplayInfo" "(S_layerName xS_purpose S_displayName S_stipple S_lineStyle S_fill S_outline" "Modifies the display attributes of an existing layer.")
("tfcDefineLayerProp" "(S_layerName xS_purpose S_propName ntbl_propValue" "Creates or modifies a property for a layer-purpose pair.")
("tfcDefineLibProp" "(S_propName ntbl_propValue" "Creates or modifies a property for a library.")
("tfcDefineLineStyle" "(S_displayName S_lineStyleName x_index x_size l_pattern" "Creates or modifies a line style for the display device.")
("tfcDefinePurpose" "(S_purposeName x_purposeNumber" "Creates a new layer purpose.")
("tfcDefineStipple" "(S_displayName S_stippleName x_index l_bitmap" "Creates or modifies a stipple for the listed display device.")
("tfcDefineSymContactDevice" "(S_name S_viaLayer xS_viaPurpose S_layer1 xS_purpose1 [(S_impLayer1 xS_impPurpose1 n_impSpacing1" "Defines a contact in the default syContact device class.")
("tfcDefineSymDepletionDevice" "(S_name S_sdLayer xS_sdPurpose [(S_impLayer xS_impPurpose n_impSpacing" "Defines a device in the default syDepletion device class.")
("tfcDefineSymEnhancementDevice" "(S_name S_sdLayer xS_sdPurpose [(S_impLayer xS_impPurpose n_impSpacing" "Defines a device in the default syEnhancement device class.")
("tfcDefineSymPinDevice" "(S_name b_maskable S_layer1 xS_purpose1 [(S_impLayer1 xS_impPurpose1 n_impSpacing1" "Defines a pin in the default syPin device class.")
("tfcDefineSymRectPinDevice" "(S_name b_maskable S_layer1 xS_purpose1 [(S_impLayer1 S_impPurpose1 S_impEncl1" "Defines a pin in the default syRectPin device class, also called the Geometry pin class.")
("tfcDefineSymWire" "(S_name S_layer xS_purpose [(S_impLayer xS_impPurpose n_spacing" "Defines a symbolic wire.")
("tfcDefineSymWireProp" "(S_wireName S_propName ntbl_propValue" "Defines a property for a symbolic wire.")
("tfcDefineTwoLayerProp" "(S_layer1Name xS_purpose1 S_layer2Name xS_purpose2 b_order S_propName ntbl_propValue" "Creates or modifies a property for two layer-purpose pairs.")
("tfcDefineView" "(S_viewName S_viewType" "Creates a new view in the library.")
("tfcDefineViewProp" "(S_viewName S_propName ntbl_propValue" "Creates or modifies a view property.")
("tfcDefineViewPropByViewType" "(S_viewType S_propName ntbl_propValue" "Creates or modifies a property for all views of a view type.")
("tfcDeleteDeviceClassProp" "(S_viewName S_className S_propName ntbl_propValue" "Deletes a property for a device class.")
("tfcDeleteDeviceProp" "(S_viewName S_deviceName S_propName ntbl_propValue" "Deletes a property for a device.")
("tfcDeleteLayer" "(S_layerName xS_purpose x_layer# S_fillStyle x_priority b_visible b_select b_blink b_lsw" "Deletes a layer-purpose pair.")
("tfcDeleteLayerDisplayInfo" "(S_layerName xS_purpose S_displayName S_stipple S_lineStyle S_fill S_outline" "Deletes the display attributes of a layer. If the layer is still defined in the library, the default attribute values are used.")
("tfcDeleteLayerProp" "(S_layerName xS_purpose S_propName ntbl_propValue" "Deletes a property for a layer-purpose pair.")
("tfcDeleteLibProp" "(S_propName ntbl_propValue" "Deletes a property for a library.")
("tfcDeleteSymContactDevice" "(S_name S_viaLayer xS_viaPurpose S_layer1 xS_purpose1 [(S_impLayer1 xS_impPurpose1 n_impSpacing1" "Deletes a contact in the default syContact device class.")
("tfcDeleteSymDepletionDevice" "(S_name S_sdLayer xS_sdPurpose [(S_impLayer xS_impPurpose n_impSpacing" "Deletes a device in the default syDepletion device class.")
("tfcDeleteSymEnhancementDevice" "(S_name S_sdLayer xS_sdPurpose [(S_impLayer xS_impPurpose n_impSpacing" "Deletes a device in the default syEnhancement device class.")
("tfcDeleteSymPinDevice" "(S_name b_maskable S_layer1 xS_purpose1 [(S_impLayer1 xS_impPurpose1 n_impSpacing1" "Deletes a pin in the default syPin device class.")
("tfcDeleteSymRectPinDevice" "(S_name b_maskable S_layer1 xS_purpose1 [(S_impLayer1 S_impPurpose1 S_impEncl1" "Deletes a pin in the default syRectPin device class, also called the Geometry pin class.")
("tfcDeleteSymWire" "(S_name S_layer xS_purpose [(S_impLayer xS_impPurpose n_spacing" "Deletes a symbolic wire.")
("tfcDeleteSymWireProp" "(S_wireName S_propName ntbl_propValue" "Deletes a property for a symbolic wire.")
("tfcDeleteTwoLayerProp" "(S_layer1Name xS_purpose1 S_layer2Name xS_purpose2 b_order S_propName ntbl_propValue" "Deletes a property for two layer-purpose pairs.")
("tfcDeleteView" "(S_viewName S_viewType" "Deletes a view in the library.")
("tfcDeleteViewProp" "(S_viewName S_propName ntbl_propValue" "Deletes a view property.")
("tfcDeleteViewPropByViewType" "(S_viewType S_propName ntbl_propValue" "Deletes a property for all views of a view type.")
))