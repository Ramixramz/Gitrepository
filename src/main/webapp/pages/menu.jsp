<%-- 
    Document   : menu
    Created on : 22 may 2022, 14:53:52
    Author     : ramiro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<a href="https://docs.google.com/spreadsheets/d/1zIVCVA0Tk5CvAiTyeAdDBPygT3aKDiSeM2FbPU0JO2c/edit?usp=sharing" target="_blank" rel="noopener noreferrer">
    <div class="editlink">Restaurant<br />Mi Pueblito</div>
</a>
<div id="app">
      <style rel="stylesheet" >
            <%@include file="../resources/css/menu.css" %>
        </style>
        <section id="specialssection" class="specials-container" v-if="menuItems_L" :style="menuStyle">
            <div id="special_component" :style="menuStyle">
                <h1>Daily Specials</h1>
                <div class="specials-table-container">
                    <table>
                        <tbody v-for="item in menuItems_L" :key="`specialmenu-${item.name}`">
                            <tr class="nameandprice">
                                <td :style="dotStyle">
                                    <span :style="menuStyle">{{item.name}}</span>
                                </td>
                                
                            </tr>
                            <tr class="description">
                                <td colspan="2">{{item.description}}</td>
                            </tr>
                        </tbody>
                    </table>
                    <table>
                        <tbody v-for="item in menuItems_R" :key="`specialmenu-${item.name}`">
                            <tr class="nameandprice">
                                <td :style="dotStyle">
                                    <span :style="menuStyle">{{item.name}}</span>
                                </td>
                               
                            </tr>
                            <tr class="description">
                                <td colspan="2">{{item.description}}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
    </div>
