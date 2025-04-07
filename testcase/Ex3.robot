*** Settings ***
Library    SeleniumLibrary
Library    DebugLibrary

*** Variables ***
${URL}    https://www.bewellstyle.com/
${BROWSER}    Chrome

${item1}    เบาะรองหลังเพื่อสุขภาพ สำหรับรถยนต์ | Car Seat Back Cushion
${item2}    เบาะรองหลังทรงสูง | Healthy Back
${item3}    ผ้าห่มเย็นอัจฉริยะ | Cool Blanket

${COLOR_BLUE1}    สีน้ำเงิน - เบาะรองหลังทรงสูง
${COLOR_BLUE2}    "ฟ้า"

${size}    "200x230cm."

*** Keywords ***
close policy popup
    wait Until Element Is Visible    //div[@class='dpdpa--popup-button-group']/a[text()='ยอมรับ']    5s
    Click Element    //div[@class='dpdpa--popup-button-group']/a[text()='ยอมรับ']
    Click Element    //button[@class="pum-close popmake-close"]
Search item
    [Arguments]    ${item}
    Wait Until Element Is Visible    xpath=//h3[@class="product-title"]/a[text()='${item}']    10s
    Click Element    xpath=//h3[@class="product-title"]/a[text()='${item}']

Add to cart
    Click Button    xpath=//button[@type="submit" and text()="หยิบใส่ตะกร้า"]

Click back to shopping
    Click Element    //a[@class="button button3"]  #Click back to shopping

Select color
    [Arguments]    ${color}
    click Element  xpath=//select[@id="pa_color"]
    click Element  xpath=//option[text()='${color}']

*** Test Cases ***
Ex3
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    close policy popup
    Search item    ${item1}
    add to cart
    Click back to shopping
    Search item    ${item2}
    select color    ${COLOR_BLUE1}
    add to cart
    Click back to shopping
    Search item    ${item3}
    Click Element  xpath=//select[@id='%e0%b8%aa%e0%b8%b5']
    Debug
    Click Element  xpath=//*[@id="%e0%b8%aa%e0%b8%b5"]/option[2]
    # Click Element  xpath=//option[@class='attached enabled' and text()="${COLOR_BLUE2}"]
    Click Element  xpath=//select[@id='%e0%b8%82%e0%b8%99%e0%b8%b2%e0%b8%94']
    Click Element  xpath=//*[@id="%e0%b8%82%e0%b8%99%e0%b8%b2%e0%b8%94"]/option[3]
    # Click Element  xpath=//option[@class='attached enabled' and text()='${size}']
    add to cart