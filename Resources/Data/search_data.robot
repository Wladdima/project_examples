*** Variables ***
&{SEARCH_ATTRIBUTE}    name=sofa
${FILTER_COLOR} =  css=button[aria-label='Filtermethode Farbe']
${FILTER_PRICE} =  css=button[aria-label='Filtermethode Preis']
${MIN_PRICE} =     css=#filter-PRICE  


${COLOR_VALUE} =  rot
${FILTER_LABEL} =  css=div.plp-applied-filters-bar > button

#${SOFA_800}    =    css=#filter-PRICE > label.plp-checkbox__wrapper.plp-checkbox__wrapper--PRICE_80000_2147483647 > span.plp-checkbox__texts > span.plp-checkbox__label

&{FILTER_FOR_COLOR}    type=${FILTER_COLOR}    value=#${COLOR_VALUE}    label=${FILTER_LABEL}    color_value=${COLOR_VALUE}
#&{Filter_min_price}      type=${FILTER_PREIS}     value=



