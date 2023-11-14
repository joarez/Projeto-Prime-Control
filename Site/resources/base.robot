** Settings **
Library  SeleniumLibrary 
#Library         AppiumLibrary
Library         String
Library         FakerLibrary
Library         RequestsLibrary
Library         JSONLibrary    
Library         Collections

Resource    RobotWeb.robot
Resource    Generalmassa.robot
Resource    AutomacaoAPIs.robot

** Keywords **
Abrir Site
    Open Browser   https://opensource-demo.orangehrmlive.com/web/index.php/auth/login   chrome
