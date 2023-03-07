*** Variables ***
&{SEARCH_ATTRIBUTE}    name=sofa
${FILTER_COLOR} =  css=button[aria-label='Filtermethode Farbe']
${FILTER_PRICE} =  css=button[aria-label='Filtermethode Preis']


${PRICE_POSITION_0_200} =     css=#filter-PRICE > label.plp-checkbox__wrapper.plp-checkbox__wrapper--PRICE_0_20000
${PRICE_POSITION_200_400} =   css=#filter-PRICE > label.plp-checkbox__wrapper.plp-checkbox__wrapper--PRICE_20000_40000
${PRICE_POSITION_400_600} =   css=#filter-PRICE > label.plp-checkbox__wrapper.plp-checkbox__wrapper--PRICE_40000_60000
${PRICE_POSITION_600_800} =   css=#filter-PRICE > label.plp-checkbox__wrapper.plp-checkbox__wrapper--PRICE_60000_80000
${PRICE_POSITION_800} =       css=#filter-PRICE > label.plp-checkbox__wrapper.plp-checkbox__wrapper--PRICE_80000_2147483647

${PRICE_RANGE_0_200} =  199,99
${PRICE_RANGE_200_400} =  399,99
${PRICE_RANGE_400_600} =  599,99
${PRICE_RANGE_600_800} =  799,99
${PRICE_RANGE_800} =  800,00


${PRICE_RANGE}


${COLOR_VALUE} =  rot
${FILTER_LABEL} =  css=div.plp-applied-filters-bar > button


&{FILTER_FOR_COLOR}    type=${FILTER_COLOR}    value=#${COLOR_VALUE}    label=${FILTER_LABEL}    color_value=${COLOR_VALUE}


&{FILTER_PRICE_0_200}      type=${FILTER_PRICE}     value=${PRICE_POSITION_0_200}    label=${FILTER_LABEL}    price_range=${PRICE_RANGE_0_200}
&{FILTER_PRICE_200_400}    type=${FILTER_PRICE}     value=${PRICE_POSITION_200_400}  label=${FILTER_LABEL}    price_range=${PRICE_RANGE_200_400}
&{FILTER_PRICE_400_600}    type=${FILTER_PRICE}     value=${PRICE_POSITION_400_600}  label=${FILTER_LABEL}    price_range=${PRICE_RANGE_400_600}
&{FILTER_PRICE_600_800}    type=${FILTER_PRICE}     value=${PRICE_POSITION_600_800}  label=${FILTER_LABEL}    price_range=${PRICE_RANGE_600_800}
&{FILTER_PRICE_800}        type=${FILTER_PRICE}     value=${PRICE_POSITION_800}      label=${FILTER_LABEL}    price_range=${PRICE_RANGE_800}
