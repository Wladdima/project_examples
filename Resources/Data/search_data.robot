*** Variables ***
&{SEARCH_ATTRIBUTE}    name=sofa
${FILTER_COLOUR} =  css=button[aria-label='Filtermethode Farbe']
${FILTER_PREIS} =  css=button[aria-label='Filtermethode Preis']
${SOFA_GREEN} =    css=div.pip-color-filter__item > #grün
#${SOFA_800}    =    css=#filter-PRICE > label.plp-checkbox__wrapper.plp-checkbox__wrapper--PRICE_80000_2147483647 > span.plp-checkbox__texts > span.plp-checkbox__label

&{Filter_green_sofa}    type=${FILTER_COLOUR}    value=${SOFA_GREEN}
#&{Filter_sofa_800}      type=${FILTER_PREIS}     value=



