<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="WhiteBackground" Runat="Server">

    <div id="checkout">

                                <div id="customer_details" class="col2-set">
                                    <div class="col-1">
                                        <div id="billingDetails" class="one_half">
                                            
                                            <h3>Billing Details</h3>
                                            <p id="billing_country_field" class="form-row form-row-wide address-field update_totals_on_change validate-required woocommerce-validated">
                                                <label >Country <abbr title="required" class="required">*</abbr>
                                                </label>
                                                <asp:DropDownList class="country_to_state country_select" id="billing_country" name="billing_country" runat="server">
                                                    <asp:ListItem value="">Select a country…</asp:ListItem>
                                                    <asp:ListItem value="AX">Åland Islands</asp:ListItem>
                                                    <asp:ListItem value="AF">Afghanistan</asp:ListItem>
                                                    <asp:ListItem value="AL">Albania</asp:ListItem>
                                                    <asp:ListItem value="DZ">Algeria</asp:ListItem>
                                                    <asp:ListItem value="AD">Andorra</asp:ListItem>
                                                    <asp:ListItem value="AO">Angola</asp:ListItem>
                                                    <asp:ListItem value="AI">Anguilla</asp:ListItem>
                                                    <asp:ListItem value="AQ">Antarctica</asp:ListItem>
                                                    <asp:ListItem value="AG">Antigua and Barbuda</asp:ListItem>
                                                    <asp:ListItem value="AR">Argentina</asp:ListItem>
                                                    <asp:ListItem value="AM">Armenia</asp:ListItem>
                                                    <asp:ListItem value="AW">Aruba</asp:ListItem>
                                                    <asp:ListItem value="AU">Australia</asp:ListItem>
                                                    <asp:ListItem value="AT">Austria</asp:ListItem>
                                                    <asp:ListItem value="AZ">Azerbaijan</asp:ListItem>
                                                    <asp:ListItem value="BS">Bahamas</asp:ListItem>
                                                    <asp:ListItem value="BH">Bahrain</asp:ListItem>
                                                    <asp:ListItem value="BD">Bangladesh</asp:ListItem>
                                                    <asp:ListItem value="BB">Barbados</asp:ListItem>
                                                    <asp:ListItem value="BY">Belarus</asp:ListItem>
                                                    <asp:ListItem value="PW">Belau</asp:ListItem>
                                                    <asp:ListItem value="BE">Belgium</asp:ListItem>
                                                    <asp:ListItem value="BZ">Belize</asp:ListItem>
                                                    <asp:ListItem value="BJ">Benin</asp:ListItem>
                                                    <asp:ListItem value="BM">Bermuda</asp:ListItem>
                                                    <asp:ListItem value="BT">Bhutan</asp:ListItem>
                                                    <asp:ListItem value="BO">Bolivia</asp:ListItem>
                                                    <asp:ListItem value="BQ">Bonaire, Saint Eustatius and Saba</asp:ListItem>
                                                    <asp:ListItem value="BA">Bosnia and Herzegovina</asp:ListItem>
                                                    <asp:ListItem value="BW">Botswana</asp:ListItem>
                                                    <asp:ListItem value="BV">Bouvet Island</asp:ListItem>
                                                    <asp:ListItem value="BR">Brazil</asp:ListItem>
                                                    <asp:ListItem value="IO">British Indian Ocean Territory</asp:ListItem>
                                                    <asp:ListItem value="VG">British Virgin Islands</asp:ListItem>
                                                    <asp:ListItem value="BN">Brunei</asp:ListItem>
                                                    <asp:ListItem value="BG">Bulgaria</asp:ListItem>
                                                    <asp:ListItem value="BF">Burkina Faso</asp:ListItem>
                                                    <asp:ListItem value="BI">Burundi</asp:ListItem>
                                                    <asp:ListItem value="KH">Cambodia</asp:ListItem>
                                                    <asp:ListItem value="CM">Cameroon</asp:ListItem>
                                                    <asp:ListItem value="CA">Canada</asp:ListItem>
                                                    <asp:ListItem value="CV">Cape Verde</asp:ListItem>
                                                    <asp:ListItem value="KY">Cayman Islands</asp:ListItem>
                                                    <asp:ListItem value="CF">Central African Republic</asp:ListItem>
                                                    <asp:ListItem value="TD">Chad</asp:ListItem>
                                                    <asp:ListItem value="CL">Chile</asp:ListItem>
                                                    <asp:ListItem value="CN">China</asp:ListItem>
                                                    <asp:ListItem value="CX">Christmas Island</asp:ListItem>
                                                    <asp:ListItem value="CC">Cocos (Keeling) Islands</asp:ListItem>
                                                    <asp:ListItem value="CO">Colombia</asp:ListItem>
                                                    <asp:ListItem value="KM">Comoros</asp:ListItem>
                                                    <asp:ListItem value="CG">Congo (Brazzaville)</asp:ListItem>
                                                    <asp:ListItem value="CD">Congo (Kinshasa)</asp:ListItem>
                                                    <asp:ListItem value="CK">Cook Islands</asp:ListItem>
                                                    <asp:ListItem value="CR">Costa Rica</asp:ListItem>
                                                    <asp:ListItem value="HR">Croatia</asp:ListItem>
                                                    <asp:ListItem value="CU">Cuba</asp:ListItem>
                                                    <asp:ListItem value="CW">CuraÇao</asp:ListItem>
                                                    <asp:ListItem value="CY">Cyprus</asp:ListItem>
                                                    <asp:ListItem value="CZ">Czech Republic</asp:ListItem>
                                                    <asp:ListItem value="DK">Denmark</asp:ListItem>
                                                    <asp:ListItem value="DJ">Djibouti</asp:ListItem>
                                                    <asp:ListItem value="DM">Dominica</asp:ListItem>
                                                    <asp:ListItem value="DO">Dominican Republic</asp:ListItem>
                                                    <asp:ListItem value="EC">Ecuador</asp:ListItem>
                                                    <asp:ListItem value="EG">Egypt</asp:ListItem>
                                                    <asp:ListItem value="SV">El Salvador</asp:ListItem>
                                                    <asp:ListItem value="GQ">Equatorial Guinea</asp:ListItem>
                                                    <asp:ListItem value="ER">Eritrea</asp:ListItem>
                                                    <asp:ListItem value="EE">Estonia</asp:ListItem>
                                                    <asp:ListItem value="ET">Ethiopia</asp:ListItem>
                                                    <asp:ListItem value="FK">Falkland Islands</asp:ListItem>
                                                    <asp:ListItem value="FO">Faroe Islands</asp:ListItem>
                                                    <asp:ListItem value="FJ">Fiji</asp:ListItem>
                                                    <asp:ListItem value="FI">Finland</asp:ListItem>
                                                    <asp:ListItem value="FR">France</asp:ListItem>
                                                    <asp:ListItem value="GF">French Guiana</asp:ListItem>
                                                    <asp:ListItem value="PF">French Polynesia</asp:ListItem>
                                                    <asp:ListItem value="TF">French Southern Territories</asp:ListItem>
                                                    <asp:ListItem value="GA">Gabon</asp:ListItem>
                                                    <asp:ListItem value="GM">Gambia</asp:ListItem>
                                                    <asp:ListItem value="GE">Georgia</asp:ListItem>
                                                    <asp:ListItem value="DE">Germany</asp:ListItem>
                                                    <asp:ListItem value="GH">Ghana</asp:ListItem>
                                                    <asp:ListItem value="GI">Gibraltar</asp:ListItem>
                                                    <asp:ListItem value="GR">Greece</asp:ListItem>
                                                    <asp:ListItem value="GL">Greenland</asp:ListItem>
                                                    <asp:ListItem value="GD">Grenada</asp:ListItem>
                                                    <asp:ListItem value="GP">Guadeloupe</asp:ListItem>
                                                    <asp:ListItem value="GT">Guatemala</asp:ListItem>
                                                    <asp:ListItem value="GG">Guernsey</asp:ListItem>
                                                    <asp:ListItem value="GN">Guinea</asp:ListItem>
                                                    <asp:ListItem value="GW">Guinea-Bissau</asp:ListItem>
                                                    <asp:ListItem value="GY">Guyana</asp:ListItem>
                                                    <asp:ListItem value="HT">Haiti</asp:ListItem>
                                                    <asp:ListItem value="HM">Heard Island and McDonald Islands</asp:ListItem>
                                                    <asp:ListItem value="HN">Honduras</asp:ListItem>
                                                    <asp:ListItem value="HK">Hong Kong</asp:ListItem>
                                                    <asp:ListItem value="HU">Hungary</asp:ListItem>
                                                    <asp:ListItem value="IS">Iceland</asp:ListItem>
                                                    <asp:ListItem value="IN">India</asp:ListItem>
                                                    <asp:ListItem value="ID">Indonesia</asp:ListItem>
                                                    <asp:ListItem value="IR">Iran</asp:ListItem>
                                                    <asp:ListItem value="IQ">Iraq</asp:ListItem>
                                                    <asp:ListItem value="IM">Isle of Man</asp:ListItem>
                                                    <asp:ListItem value="IL">Israel</asp:ListItem>
                                                    <asp:ListItem value="IT">Italy</asp:ListItem>
                                                    <asp:ListItem value="CI">Ivory Coast</asp:ListItem>
                                                    <asp:ListItem value="JM">Jamaica</asp:ListItem>
                                                    <asp:ListItem value="JP">Japan</asp:ListItem>
                                                    <asp:ListItem value="JE">Jersey</asp:ListItem>
                                                    <asp:ListItem value="JO">Jordan</asp:ListItem>
                                                    <asp:ListItem value="KZ">Kazakhstan</asp:ListItem>
                                                    <asp:ListItem value="KE">Kenya</asp:ListItem>
                                                    <asp:ListItem value="KI">Kiribati</asp:ListItem>
                                                    <asp:ListItem value="KW">Kuwait</asp:ListItem>
                                                    <asp:ListItem value="KG">Kyrgyzstan</asp:ListItem>
                                                    <asp:ListItem value="LA">Laos</asp:ListItem>
                                                    <asp:ListItem value="LV">Latvia</asp:ListItem>
                                                    <asp:ListItem value="LB">Lebanon</asp:ListItem>
                                                    <asp:ListItem value="LS">Lesotho</asp:ListItem>
                                                    <asp:ListItem value="LR">Liberia</asp:ListItem>
                                                    <asp:ListItem value="LY">Libya</asp:ListItem>
                                                    <asp:ListItem value="LI">Liechtenstein</asp:ListItem>
                                                    <asp:ListItem value="LT">Lithuania</asp:ListItem>
                                                    <asp:ListItem value="LU">Luxembourg</asp:ListItem>
                                                    <asp:ListItem value="MO">Macao S.A.R., China</asp:ListItem>
                                                    <asp:ListItem value="MK">Macedonia</asp:ListItem>
                                                    <asp:ListItem value="MG">Madagascar</asp:ListItem>
                                                    <asp:ListItem value="MW">Malawi</asp:ListItem>
                                                    <asp:ListItem value="MY">Malaysia</asp:ListItem>
                                                    <asp:ListItem value="MV">Maldives</asp:ListItem>
                                                    <asp:ListItem value="ML">Mali</asp:ListItem>
                                                    <asp:ListItem value="MT">Malta</asp:ListItem>
                                                    <asp:ListItem value="MH">Marshall Islands</asp:ListItem>
                                                    <asp:ListItem value="MQ">Martinique</asp:ListItem>
                                                    <asp:ListItem value="MR">Mauritania</asp:ListItem>
                                                    <asp:ListItem value="MU">Mauritius</asp:ListItem>
                                                    <asp:ListItem value="YT">Mayotte</asp:ListItem>
                                                    <asp:ListItem value="MX">Mexico</asp:ListItem>
                                                    <asp:ListItem value="FM">Micronesia</asp:ListItem>
                                                    <asp:ListItem value="MD">Moldova</asp:ListItem>
                                                    <asp:ListItem value="MC">Monaco</asp:ListItem>
                                                    <asp:ListItem value="MN">Mongolia</asp:ListItem>
                                                    <asp:ListItem value="ME">Montenegro</asp:ListItem>
                                                    <asp:ListItem value="MS">Montserrat</asp:ListItem>
                                                    <asp:ListItem value="MA">Morocco</asp:ListItem>
                                                    <asp:ListItem value="MZ">Mozambique</asp:ListItem>
                                                    <asp:ListItem value="MM">Myanmar</asp:ListItem>
                                                    <asp:ListItem value="NA">Namibia</asp:ListItem>
                                                    <asp:ListItem value="NR">Nauru</asp:ListItem>
                                                    <asp:ListItem value="NP">Nepal</asp:ListItem>
                                                    <asp:ListItem value="NL">Netherlands</asp:ListItem>
                                                    <asp:ListItem value="AN">Netherlands Antilles</asp:ListItem>
                                                    <asp:ListItem value="NC">New Caledonia</asp:ListItem>
                                                    <asp:ListItem value="NZ">New Zealand</asp:ListItem>
                                                    <asp:ListItem value="NI">Nicaragua</asp:ListItem>
                                                    <asp:ListItem value="NE">Niger</asp:ListItem>
                                                    <asp:ListItem value="NG">Nigeria</asp:ListItem>
                                                    <asp:ListItem value="NU">Niue</asp:ListItem>
                                                    <asp:ListItem value="NF">Norfolk Island</asp:ListItem>
                                                    <asp:ListItem value="KP">North Korea</asp:ListItem>
                                                    <asp:ListItem value="NO">Norway</asp:ListItem>
                                                    <asp:ListItem value="OM">Oman</asp:ListItem>
                                                    <asp:ListItem value="PK">Pakistan</asp:ListItem>
                                                    <asp:ListItem value="PS">Palestinian Territory</asp:ListItem>
                                                    <asp:ListItem value="PA">Panama</asp:ListItem>
                                                    <asp:ListItem value="PG">Papua New Guinea</asp:ListItem>
                                                    <asp:ListItem value="PY">Paraguay</asp:ListItem>
                                                    <asp:ListItem value="PE">Peru</asp:ListItem>
                                                    <asp:ListItem value="PH">Philippines</asp:ListItem>
                                                    <asp:ListItem value="PN">Pitcairn</asp:ListItem>
                                                    <asp:ListItem value="PL">Poland</asp:ListItem>
                                                    <asp:ListItem value="PT">Portugal</asp:ListItem>
                                                    <asp:ListItem value="QA">Qatar</asp:ListItem>
                                                    <asp:ListItem value="IE">Republic of Ireland</asp:ListItem>
                                                    <asp:ListItem value="RE">Reunion</asp:ListItem>
                                                    <asp:ListItem value="RO">Romania</asp:ListItem>
                                                    <asp:ListItem value="RU">Russia</asp:ListItem>
                                                    <asp:ListItem value="RW">Rwanda</asp:ListItem>
                                                    <asp:ListItem value="ST">São Tomé and Príncipe</asp:ListItem>
                                                    <asp:ListItem value="BL">Saint Barthélemy</asp:ListItem>
                                                    <asp:ListItem value="SH">Saint Helena</asp:ListItem>
                                                    <asp:ListItem value="KN">Saint Kitts and Nevis</asp:ListItem>
                                                    <asp:ListItem value="LC">Saint Lucia</asp:ListItem>
                                                    <asp:ListItem value="SX">Saint Martin (Dutch part)</asp:ListItem>
                                                    <asp:ListItem value="MF">Saint Martin (French part)</asp:ListItem>
                                                    <asp:ListItem value="PM">Saint Pierre and Miquelon</asp:ListItem>
                                                    <asp:ListItem value="VC">Saint Vincent and the Grenadines</asp:ListItem>
                                                    <asp:ListItem value="SM">San Marino</asp:ListItem>
                                                    <asp:ListItem value="SA">Saudi Arabia</asp:ListItem>
                                                    <asp:ListItem value="SN">Senegal</asp:ListItem>
                                                    <asp:ListItem value="RS">Serbia</asp:ListItem>
                                                    <asp:ListItem value="SC">Seychelles</asp:ListItem>
                                                    <asp:ListItem value="SL">Sierra Leone</asp:ListItem>
                                                    <asp:ListItem value="SG">Singapore</asp:ListItem>
                                                    <asp:ListItem value="SK">Slovakia</asp:ListItem>
                                                    <asp:ListItem value="SI">Slovenia</asp:ListItem>
                                                    <asp:ListItem value="SB">Solomon Islands</asp:ListItem>
                                                    <asp:ListItem value="SO">Somalia</asp:ListItem>
                                                    <asp:ListItem value="ZA">South Africa</asp:ListItem>
                                                    <asp:ListItem value="GS">South Georgia/Sandwich Islands</asp:ListItem>
                                                    <asp:ListItem value="KR">South Korea</asp:ListItem>
                                                    <asp:ListItem value="SS">South Sudan</asp:ListItem>
                                                    <asp:ListItem value="ES">Spain</asp:ListItem>
                                                    <asp:ListItem value="LK">Sri Lanka</asp:ListItem>
                                                    <asp:ListItem value="SD">Sudan</asp:ListItem>
                                                    <asp:ListItem value="SR">Suriname</asp:ListItem>
                                                    <asp:ListItem value="SJ">Svalbard and Jan Mayen</asp:ListItem>
                                                    <asp:ListItem value="SZ">Swaziland</asp:ListItem>
                                                    <asp:ListItem value="SE">Sweden</asp:ListItem>
                                                    <asp:ListItem value="CH">Switzerland</asp:ListItem>
                                                    <asp:ListItem value="SY">Syria</asp:ListItem>
                                                    <asp:ListItem value="TW">Taiwan</asp:ListItem>
                                                    <asp:ListItem value="TJ">Tajikistan</asp:ListItem>
                                                    <asp:ListItem value="TZ">Tanzania</asp:ListItem>
                                                    <asp:ListItem value="TH">Thailand</asp:ListItem>
                                                    <asp:ListItem value="TL">Timor-Leste</asp:ListItem>
                                                    <asp:ListItem value="TG">Togo</asp:ListItem>
                                                    <asp:ListItem value="TK">Tokelau</asp:ListItem>
                                                    <asp:ListItem value="TO">Tonga</asp:ListItem>
                                                    <asp:ListItem value="TT">Trinidad and Tobago</asp:ListItem>
                                                    <asp:ListItem value="TN">Tunisia</asp:ListItem>
                                                    <asp:ListItem value="TR">Turkey</asp:ListItem>
                                                    <asp:ListItem value="TM">Turkmenistan</asp:ListItem>
                                                    <asp:ListItem value="TC">Turks and Caicos Islands</asp:ListItem>
                                                    <asp:ListItem value="TV">Tuvalu</asp:ListItem>
                                                    <asp:ListItem value="UG">Uganda</asp:ListItem>
                                                    <asp:ListItem value="UA">Ukraine</asp:ListItem>
                                                    <asp:ListItem value="AE">United Arab Emirates</asp:ListItem>
                                                    <asp:ListItem selected="selected" value="GB">United Kingdom (UK)</asp:ListItem>
                                                    <asp:ListItem value="US">United States (US)</asp:ListItem>
                                                    <asp:ListItem value="UY">Uruguay</asp:ListItem>
                                                    <asp:ListItem value="UZ">Uzbekistan</asp:ListItem>
                                                    <asp:ListItem value="VU">Vanuatu</asp:ListItem>
                                                    <asp:ListItem value="VA">Vatican</asp:ListItem>
                                                    <asp:ListItem value="VE">Venezuela</asp:ListItem>
                                                    <asp:ListItem value="VN">Vietnam</asp:ListItem>
                                                    <asp:ListItem value="WF">Wallis and Futuna</asp:ListItem>
                                                    <asp:ListItem value="EH">Western Sahara</asp:ListItem>
                                                    <asp:ListItem value="WS">Western Samoa</asp:ListItem>
                                                    <asp:ListItem value="YE">Yemen</asp:ListItem>
                                                    <asp:ListItem value="ZM">Zambia</asp:ListItem>
                                                    <asp:ListItem value="ZW">Zimbabwe</asp:ListItem>
                                                </asp:DropDownList>

                                                
                                            </p>

                                            <p id="billing_first_name_field" class="form-row form-row-first validate-required">
                                                <label >First Name <abbr title="required" class="required">*</abbr>
                                                </label>
                                                <asp:TextBox type="text" placeholder="" id="billing_first_name"  runat="server"></asp:TextBox>
                                                
                                            </p>

                                            <p id="billing_last_name_field" class="form-row form-row-last validate-required">
                                                <label >Last Name <abbr title="required" class="required">*</abbr>
                                                </label>
                                                <asp:TextBox type="text" placeholder="" id="billing_last_name"  runat="server"></asp:TextBox>
                                                
                                            </p>
                                           

                                            <p id="billing_address_1_field" class="form-row form-row-wide address-field validate-required">
                                                <label >Address <abbr title="required" class="required">*</abbr>
                                                </label>
                                                <asp:TextBox type="text" placeholder="Street address" id="billing_address_1"  runat="server"></asp:TextBox>
                                                
                                            </p>

                                            <p id="billing_city_field" class="form-row form-row-wide address-field validate-required" data-o_class="form-row form-row-wide address-field validate-required">
                                                <label >Town / City <abbr title="required" class="required">*</abbr>
                                                </label>
                                                <asp:TextBox type="text" placeholder="Town / City" id="billing_city" runat="server"></asp:TextBox>
                                                
                                            </p>

                                            <p id="billing_state_field" class="form-row form-row-first address-field validate-state" data-o_class="form-row form-row-first address-field validate-state">
                                                <label >County</label>
                                                <asp:TextBox type="text" id="billing_state"  placeholder="State / County" runat="server"></asp:TextBox>
                                                
                                            </p>
                                            <p id="billing_postcode_field" class="form-row form-row-last address-field validate-required validate-postcode" data-o_class="form-row form-row-last address-field validate-required validate-postcode">
                                                <label>Postcode <abbr title="required" class="required">*</abbr>
                                                </label>
                                                <asp:TextBox type="text" placeholder="Postcode / Zip" id="billing_postcode"  runat="server"></asp:TextBox>
                                                
                                            </p>

                                          

                                            <p id="billing_email_field" class="form-row form-row-first validate-required validate-email">
                                                <label >Email Address <abbr title="required" class="required">*</abbr>
                                                </label>
                                                <asp:TextBox type="text" placeholder="" id="billing_email"  class="input-text " runat="server"></asp:TextBox>
                                                
                                            </p>

                                            <p id="billing_phone_field" class="form-row form-row-last validate-required validate-phone">
                                                <label >Phone <abbr title="required" class="required">*</abbr>
                                                </label>
                                                <asp:TextBox type="text"  placeholder="" id="billing_phone" runat="server"></asp:TextBox>
                                                
                                            </p>
                                      
                                            
                                        </div>
                                    </div>
                                    <%--BILLING INFO ENDS--%>


                                  <%--SHIPPING INFO FORM BEGINS--%>

                                        <div class="fl_right">
                                            <h3 id="ship-to-different-address">

                                                <%-- add AJAX CODE?--%>
                                                <label class="checkbox" >Ship to a billing address?</label>
                                                <asp:CheckBox class="input-checkbox" id="ship_checkbox" runat="server" AutoPostBack="True" OnCheckedChanged="ship_checkbox_CheckedChanged" />
                                                
                                             </h3>
                                            <div class="shipping_address" style="display: block;">
                                                <p id="shipcountryfield" class="form-row form-row-wide address-field update_totals_on_change validate-required woocommerce-validated">
                                                <label>Country <abbr title="required" class="required">*</abbr>
                                                </label>
                                                <asp:DropDownList class="country_to_state country_select" id="shippingdroplist"  runat="server">
                                                    <asp:ListItem value="">Select a country…</asp:ListItem>
                                                    <asp:ListItem value="AX">Åland Islands</asp:ListItem>
                                                    <asp:ListItem value="AF">Afghanistan</asp:ListItem>
                                                    <asp:ListItem value="AL">Albania</asp:ListItem>
                                                    <asp:ListItem value="DZ">Algeria</asp:ListItem>
                                                    <asp:ListItem value="AD">Andorra</asp:ListItem>
                                                    <asp:ListItem value="AO">Angola</asp:ListItem>
                                                    <asp:ListItem value="AI">Anguilla</asp:ListItem>
                                                    <asp:ListItem value="AQ">Antarctica</asp:ListItem>
                                                    <asp:ListItem value="AG">Antigua and Barbuda</asp:ListItem>
                                                    <asp:ListItem value="AR">Argentina</asp:ListItem>
                                                    <asp:ListItem value="AM">Armenia</asp:ListItem>
                                                    <asp:ListItem value="AW">Aruba</asp:ListItem>
                                                    <asp:ListItem value="AU">Australia</asp:ListItem>
                                                    <asp:ListItem value="AT">Austria</asp:ListItem>
                                                    <asp:ListItem value="AZ">Azerbaijan</asp:ListItem>
                                                    <asp:ListItem value="BS">Bahamas</asp:ListItem>
                                                    <asp:ListItem value="BH">Bahrain</asp:ListItem>
                                                    <asp:ListItem value="BD">Bangladesh</asp:ListItem>
                                                    <asp:ListItem value="BB">Barbados</asp:ListItem>
                                                    <asp:ListItem value="BY">Belarus</asp:ListItem>
                                                    <asp:ListItem value="PW">Belau</asp:ListItem>
                                                    <asp:ListItem value="BE">Belgium</asp:ListItem>
                                                    <asp:ListItem value="BZ">Belize</asp:ListItem>
                                                    <asp:ListItem value="BJ">Benin</asp:ListItem>
                                                    <asp:ListItem value="BM">Bermuda</asp:ListItem>
                                                    <asp:ListItem value="BT">Bhutan</asp:ListItem>
                                                    <asp:ListItem value="BO">Bolivia</asp:ListItem>
                                                    <asp:ListItem value="BQ">Bonaire, Saint Eustatius and Saba</asp:ListItem>
                                                    <asp:ListItem value="BA">Bosnia and Herzegovina</asp:ListItem>
                                                    <asp:ListItem value="BW">Botswana</asp:ListItem>
                                                    <asp:ListItem value="BV">Bouvet Island</asp:ListItem>
                                                    <asp:ListItem value="BR">Brazil</asp:ListItem>
                                                    <asp:ListItem value="IO">British Indian Ocean Territory</asp:ListItem>
                                                    <asp:ListItem value="VG">British Virgin Islands</asp:ListItem>
                                                    <asp:ListItem value="BN">Brunei</asp:ListItem>
                                                    <asp:ListItem value="BG">Bulgaria</asp:ListItem>
                                                    <asp:ListItem value="BF">Burkina Faso</asp:ListItem>
                                                    <asp:ListItem value="BI">Burundi</asp:ListItem>
                                                    <asp:ListItem value="KH">Cambodia</asp:ListItem>
                                                    <asp:ListItem value="CM">Cameroon</asp:ListItem>
                                                    <asp:ListItem value="CA">Canada</asp:ListItem>
                                                    <asp:ListItem value="CV">Cape Verde</asp:ListItem>
                                                    <asp:ListItem value="KY">Cayman Islands</asp:ListItem>
                                                    <asp:ListItem value="CF">Central African Republic</asp:ListItem>
                                                    <asp:ListItem value="TD">Chad</asp:ListItem>
                                                    <asp:ListItem value="CL">Chile</asp:ListItem>
                                                    <asp:ListItem value="CN">China</asp:ListItem>
                                                    <asp:ListItem value="CX">Christmas Island</asp:ListItem>
                                                    <asp:ListItem value="CC">Cocos (Keeling) Islands</asp:ListItem>
                                                    <asp:ListItem value="CO">Colombia</asp:ListItem>
                                                    <asp:ListItem value="KM">Comoros</asp:ListItem>
                                                    <asp:ListItem value="CG">Congo (Brazzaville)</asp:ListItem>
                                                    <asp:ListItem value="CD">Congo (Kinshasa)</asp:ListItem>
                                                    <asp:ListItem value="CK">Cook Islands</asp:ListItem>
                                                    <asp:ListItem value="CR">Costa Rica</asp:ListItem>
                                                    <asp:ListItem value="HR">Croatia</asp:ListItem>
                                                    <asp:ListItem value="CU">Cuba</asp:ListItem>
                                                    <asp:ListItem value="CW">CuraÇao</asp:ListItem>
                                                    <asp:ListItem value="CY">Cyprus</asp:ListItem>
                                                    <asp:ListItem value="CZ">Czech Republic</asp:ListItem>
                                                    <asp:ListItem value="DK">Denmark</asp:ListItem>
                                                    <asp:ListItem value="DJ">Djibouti</asp:ListItem>
                                                    <asp:ListItem value="DM">Dominica</asp:ListItem>
                                                    <asp:ListItem value="DO">Dominican Republic</asp:ListItem>
                                                    <asp:ListItem value="EC">Ecuador</asp:ListItem>
                                                    <asp:ListItem value="EG">Egypt</asp:ListItem>
                                                    <asp:ListItem value="SV">El Salvador</asp:ListItem>
                                                    <asp:ListItem value="GQ">Equatorial Guinea</asp:ListItem>
                                                    <asp:ListItem value="ER">Eritrea</asp:ListItem>
                                                    <asp:ListItem value="EE">Estonia</asp:ListItem>
                                                    <asp:ListItem value="ET">Ethiopia</asp:ListItem>
                                                    <asp:ListItem value="FK">Falkland Islands</asp:ListItem>
                                                    <asp:ListItem value="FO">Faroe Islands</asp:ListItem>
                                                    <asp:ListItem value="FJ">Fiji</asp:ListItem>
                                                    <asp:ListItem value="FI">Finland</asp:ListItem>
                                                    <asp:ListItem value="FR">France</asp:ListItem>
                                                    <asp:ListItem value="GF">French Guiana</asp:ListItem>
                                                    <asp:ListItem value="PF">French Polynesia</asp:ListItem>
                                                    <asp:ListItem value="TF">French Southern Territories</asp:ListItem>
                                                    <asp:ListItem value="GA">Gabon</asp:ListItem>
                                                    <asp:ListItem value="GM">Gambia</asp:ListItem>
                                                    <asp:ListItem value="GE">Georgia</asp:ListItem>
                                                    <asp:ListItem value="DE">Germany</asp:ListItem>
                                                    <asp:ListItem value="GH">Ghana</asp:ListItem>
                                                    <asp:ListItem value="GI">Gibraltar</asp:ListItem>
                                                    <asp:ListItem value="GR">Greece</asp:ListItem>
                                                    <asp:ListItem value="GL">Greenland</asp:ListItem>
                                                    <asp:ListItem value="GD">Grenada</asp:ListItem>
                                                    <asp:ListItem value="GP">Guadeloupe</asp:ListItem>
                                                    <asp:ListItem value="GT">Guatemala</asp:ListItem>
                                                    <asp:ListItem value="GG">Guernsey</asp:ListItem>
                                                    <asp:ListItem value="GN">Guinea</asp:ListItem>
                                                    <asp:ListItem value="GW">Guinea-Bissau</asp:ListItem>
                                                    <asp:ListItem value="GY">Guyana</asp:ListItem>
                                                    <asp:ListItem value="HT">Haiti</asp:ListItem>
                                                    <asp:ListItem value="HM">Heard Island and McDonald Islands</asp:ListItem>
                                                    <asp:ListItem value="HN">Honduras</asp:ListItem>
                                                    <asp:ListItem value="HK">Hong Kong</asp:ListItem>
                                                    <asp:ListItem value="HU">Hungary</asp:ListItem>
                                                    <asp:ListItem value="IS">Iceland</asp:ListItem>
                                                    <asp:ListItem value="IN">India</asp:ListItem>
                                                    <asp:ListItem value="ID">Indonesia</asp:ListItem>
                                                    <asp:ListItem value="IR">Iran</asp:ListItem>
                                                    <asp:ListItem value="IQ">Iraq</asp:ListItem>
                                                    <asp:ListItem value="IM">Isle of Man</asp:ListItem>
                                                    <asp:ListItem value="IL">Israel</asp:ListItem>
                                                    <asp:ListItem value="IT">Italy</asp:ListItem>
                                                    <asp:ListItem value="CI">Ivory Coast</asp:ListItem>
                                                    <asp:ListItem value="JM">Jamaica</asp:ListItem>
                                                    <asp:ListItem value="JP">Japan</asp:ListItem>
                                                    <asp:ListItem value="JE">Jersey</asp:ListItem>
                                                    <asp:ListItem value="JO">Jordan</asp:ListItem>
                                                    <asp:ListItem value="KZ">Kazakhstan</asp:ListItem>
                                                    <asp:ListItem value="KE">Kenya</asp:ListItem>
                                                    <asp:ListItem value="KI">Kiribati</asp:ListItem>
                                                    <asp:ListItem value="KW">Kuwait</asp:ListItem>
                                                    <asp:ListItem value="KG">Kyrgyzstan</asp:ListItem>
                                                    <asp:ListItem value="LA">Laos</asp:ListItem>
                                                    <asp:ListItem value="LV">Latvia</asp:ListItem>
                                                    <asp:ListItem value="LB">Lebanon</asp:ListItem>
                                                    <asp:ListItem value="LS">Lesotho</asp:ListItem>
                                                    <asp:ListItem value="LR">Liberia</asp:ListItem>
                                                    <asp:ListItem value="LY">Libya</asp:ListItem>
                                                    <asp:ListItem value="LI">Liechtenstein</asp:ListItem>
                                                    <asp:ListItem value="LT">Lithuania</asp:ListItem>
                                                    <asp:ListItem value="LU">Luxembourg</asp:ListItem>
                                                    <asp:ListItem value="MO">Macao S.A.R., China</asp:ListItem>
                                                    <asp:ListItem value="MK">Macedonia</asp:ListItem>
                                                    <asp:ListItem value="MG">Madagascar</asp:ListItem>
                                                    <asp:ListItem value="MW">Malawi</asp:ListItem>
                                                    <asp:ListItem value="MY">Malaysia</asp:ListItem>
                                                    <asp:ListItem value="MV">Maldives</asp:ListItem>
                                                    <asp:ListItem value="ML">Mali</asp:ListItem>
                                                    <asp:ListItem value="MT">Malta</asp:ListItem>
                                                    <asp:ListItem value="MH">Marshall Islands</asp:ListItem>
                                                    <asp:ListItem value="MQ">Martinique</asp:ListItem>
                                                    <asp:ListItem value="MR">Mauritania</asp:ListItem>
                                                    <asp:ListItem value="MU">Mauritius</asp:ListItem>
                                                    <asp:ListItem value="YT">Mayotte</asp:ListItem>
                                                    <asp:ListItem value="MX">Mexico</asp:ListItem>
                                                    <asp:ListItem value="FM">Micronesia</asp:ListItem>
                                                    <asp:ListItem value="MD">Moldova</asp:ListItem>
                                                    <asp:ListItem value="MC">Monaco</asp:ListItem>
                                                    <asp:ListItem value="MN">Mongolia</asp:ListItem>
                                                    <asp:ListItem value="ME">Montenegro</asp:ListItem>
                                                    <asp:ListItem value="MS">Montserrat</asp:ListItem>
                                                    <asp:ListItem value="MA">Morocco</asp:ListItem>
                                                    <asp:ListItem value="MZ">Mozambique</asp:ListItem>
                                                    <asp:ListItem value="MM">Myanmar</asp:ListItem>
                                                    <asp:ListItem value="NA">Namibia</asp:ListItem>
                                                    <asp:ListItem value="NR">Nauru</asp:ListItem>
                                                    <asp:ListItem value="NP">Nepal</asp:ListItem>
                                                    <asp:ListItem value="NL">Netherlands</asp:ListItem>
                                                    <asp:ListItem value="AN">Netherlands Antilles</asp:ListItem>
                                                    <asp:ListItem value="NC">New Caledonia</asp:ListItem>
                                                    <asp:ListItem value="NZ">New Zealand</asp:ListItem>
                                                    <asp:ListItem value="NI">Nicaragua</asp:ListItem>
                                                    <asp:ListItem value="NE">Niger</asp:ListItem>
                                                    <asp:ListItem value="NG">Nigeria</asp:ListItem>
                                                    <asp:ListItem value="NU">Niue</asp:ListItem>
                                                    <asp:ListItem value="NF">Norfolk Island</asp:ListItem>
                                                    <asp:ListItem value="KP">North Korea</asp:ListItem>
                                                    <asp:ListItem value="NO">Norway</asp:ListItem>
                                                    <asp:ListItem value="OM">Oman</asp:ListItem>
                                                    <asp:ListItem value="PK">Pakistan</asp:ListItem>
                                                    <asp:ListItem value="PS">Palestinian Territory</asp:ListItem>
                                                    <asp:ListItem value="PA">Panama</asp:ListItem>
                                                    <asp:ListItem value="PG">Papua New Guinea</asp:ListItem>
                                                    <asp:ListItem value="PY">Paraguay</asp:ListItem>
                                                    <asp:ListItem value="PE">Peru</asp:ListItem>
                                                    <asp:ListItem value="PH">Philippines</asp:ListItem>
                                                    <asp:ListItem value="PN">Pitcairn</asp:ListItem>
                                                    <asp:ListItem value="PL">Poland</asp:ListItem>
                                                    <asp:ListItem value="PT">Portugal</asp:ListItem>
                                                    <asp:ListItem value="QA">Qatar</asp:ListItem>
                                                    <asp:ListItem value="IE">Republic of Ireland</asp:ListItem>
                                                    <asp:ListItem value="RE">Reunion</asp:ListItem>
                                                    <asp:ListItem value="RO">Romania</asp:ListItem>
                                                    <asp:ListItem value="RU">Russia</asp:ListItem>
                                                    <asp:ListItem value="RW">Rwanda</asp:ListItem>
                                                    <asp:ListItem value="ST">São Tomé and Príncipe</asp:ListItem>
                                                    <asp:ListItem value="BL">Saint Barthélemy</asp:ListItem>
                                                    <asp:ListItem value="SH">Saint Helena</asp:ListItem>
                                                    <asp:ListItem value="KN">Saint Kitts and Nevis</asp:ListItem>
                                                    <asp:ListItem value="LC">Saint Lucia</asp:ListItem>
                                                    <asp:ListItem value="SX">Saint Martin (Dutch part)</asp:ListItem>
                                                    <asp:ListItem value="MF">Saint Martin (French part)</asp:ListItem>
                                                    <asp:ListItem value="PM">Saint Pierre and Miquelon</asp:ListItem>
                                                    <asp:ListItem value="VC">Saint Vincent and the Grenadines</asp:ListItem>
                                                    <asp:ListItem value="SM">San Marino</asp:ListItem>
                                                    <asp:ListItem value="SA">Saudi Arabia</asp:ListItem>
                                                    <asp:ListItem value="SN">Senegal</asp:ListItem>
                                                    <asp:ListItem value="RS">Serbia</asp:ListItem>
                                                    <asp:ListItem value="SC">Seychelles</asp:ListItem>
                                                    <asp:ListItem value="SL">Sierra Leone</asp:ListItem>
                                                    <asp:ListItem value="SG">Singapore</asp:ListItem>
                                                    <asp:ListItem value="SK">Slovakia</asp:ListItem>
                                                    <asp:ListItem value="SI">Slovenia</asp:ListItem>
                                                    <asp:ListItem value="SB">Solomon Islands</asp:ListItem>
                                                    <asp:ListItem value="SO">Somalia</asp:ListItem>
                                                    <asp:ListItem value="ZA">South Africa</asp:ListItem>
                                                    <asp:ListItem value="GS">South Georgia/Sandwich Islands</asp:ListItem>
                                                    <asp:ListItem value="KR">South Korea</asp:ListItem>
                                                    <asp:ListItem value="SS">South Sudan</asp:ListItem>
                                                    <asp:ListItem value="ES">Spain</asp:ListItem>
                                                    <asp:ListItem value="LK">Sri Lanka</asp:ListItem>
                                                    <asp:ListItem value="SD">Sudan</asp:ListItem>
                                                    <asp:ListItem value="SR">Suriname</asp:ListItem>
                                                    <asp:ListItem value="SJ">Svalbard and Jan Mayen</asp:ListItem>
                                                    <asp:ListItem value="SZ">Swaziland</asp:ListItem>
                                                    <asp:ListItem value="SE">Sweden</asp:ListItem>
                                                    <asp:ListItem value="CH">Switzerland</asp:ListItem>
                                                    <asp:ListItem value="SY">Syria</asp:ListItem>
                                                    <asp:ListItem value="TW">Taiwan</asp:ListItem>
                                                    <asp:ListItem value="TJ">Tajikistan</asp:ListItem>
                                                    <asp:ListItem value="TZ">Tanzania</asp:ListItem>
                                                    <asp:ListItem value="TH">Thailand</asp:ListItem>
                                                    <asp:ListItem value="TL">Timor-Leste</asp:ListItem>
                                                    <asp:ListItem value="TG">Togo</asp:ListItem>
                                                    <asp:ListItem value="TK">Tokelau</asp:ListItem>
                                                    <asp:ListItem value="TO">Tonga</asp:ListItem>
                                                    <asp:ListItem value="TT">Trinidad and Tobago</asp:ListItem>
                                                    <asp:ListItem value="TN">Tunisia</asp:ListItem>
                                                    <asp:ListItem value="TR">Turkey</asp:ListItem>
                                                    <asp:ListItem value="TM">Turkmenistan</asp:ListItem>
                                                    <asp:ListItem value="TC">Turks and Caicos Islands</asp:ListItem>
                                                    <asp:ListItem value="TV">Tuvalu</asp:ListItem>
                                                    <asp:ListItem value="UG">Uganda</asp:ListItem>
                                                    <asp:ListItem value="UA">Ukraine</asp:ListItem>
                                                    <asp:ListItem value="AE">United Arab Emirates</asp:ListItem>
                                                    <asp:ListItem selected="selected" value="GB">United Kingdom (UK)</asp:ListItem>
                                                    <asp:ListItem value="US">United States (US)</asp:ListItem>
                                                    <asp:ListItem value="UY">Uruguay</asp:ListItem>
                                                    <asp:ListItem value="UZ">Uzbekistan</asp:ListItem>
                                                    <asp:ListItem value="VU">Vanuatu</asp:ListItem>
                                                    <asp:ListItem value="VA">Vatican</asp:ListItem>
                                                    <asp:ListItem value="VE">Venezuela</asp:ListItem>
                                                    <asp:ListItem value="VN">Vietnam</asp:ListItem>
                                                    <asp:ListItem value="WF">Wallis and Futuna</asp:ListItem>
                                                    <asp:ListItem value="EH">Western Sahara</asp:ListItem>
                                                    <asp:ListItem value="WS">Western Samoa</asp:ListItem>
                                                    <asp:ListItem value="YE">Yemen</asp:ListItem>
                                                    <asp:ListItem value="ZM">Zambia</asp:ListItem>
                                                    <asp:ListItem value="ZW">Zimbabwe</asp:ListItem>
                                                </asp:DropDownList>

                                                
                                            </p>

                                            <p id="shipfnamefield" class="form-row form-row-first validate-required">
                                                <label >First Name <abbr title="required" class="required">*</abbr>
                                                </label>
                                                <asp:TextBox type="text" placeholder="First Name" id="shipfname"  runat="server"></asp:TextBox>
                                                
                                            </p>

                                            <p id="shiplnamefield" class="form-row form-row-last validate-required">
                                                <label >Last Name <abbr title="required" class="required">*</abbr>
                                                </label>
                                                <asp:TextBox type="text" placeholder="Last Name" id="shiplname"  runat="server"></asp:TextBox>
                                                
                                            </p>
                                           

                                            <p id="shipaddyfield" class="form-row form-row-wide address-field validate-required">
                                                <label >Address <abbr title="required" class="required">*</abbr>
                                                </label>
                                                <asp:TextBox type="text" placeholder="Street address" id="shipaddy"  runat="server"></asp:TextBox>
                                                
                                            </p>

                                            <p id="shipcityfield" class="form-row form-row-wide address-field validate-required" data-o_class="form-row form-row-wide address-field validate-required">
                                                <label >Town / City <abbr title="required" class="required">*</abbr>
                                                </label>
                                                <asp:TextBox type="text" placeholder="Town / City" id="shipcity" runat="server"></asp:TextBox>
                                                
                                            </p>

                                            <p id="shipstatefield" class="form-row form-row-first address-field validate-state" data-o_class="form-row form-row-first address-field validate-state">
                                                <label >County</label>
                                                <asp:TextBox type="text" id="shipstate"  placeholder="State / County" runat="server"></asp:TextBox>
                                                
                                            </p>
                                            <p id="shipzipfield" class="form-row form-row-last address-field validate-required validate-postcode" data-o_class="form-row form-row-last address-field validate-required validate-postcode">
                                                <label >Postcode <abbr title="required" class="required">*</abbr>
                                                </label>
                                                <asp:TextBox type="text" placeholder="Postcode / Zip" id="shipzip"  runat="server"></asp:TextBox>
                                                
                                            </p>

                                            </div>





                                            <p id="order_comments_field" class="=m-row notes">
                                                <label >Order Notes</label>
                                            <asp:TextBox ID="order_comments" TextMode="MultiLine" runat="server" class="input-text " name="order_comments"></asp:TextBox>
                                            </p>


                                        </div>

                                    

                                </div>

                                <div id="order_review" class="fl_right">
                                <h3 id="order_review_heading">Your order</h3>

                                <%--need to get data from view cart--%>
                                    <table class="shop_table">
                                        <thead>
                                            <tr>
                                                <th class="product-name">Product</th>
                                                <th class="product-total">Total</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <th>Cart Subtotal</th>
                                            <td>
                                                <asp:Label ID="lblSubtotal" runat="server"></asp:Label>
                                             
                                        </tr>


                                        <tr>
                                            <th>Order Total</th>
                                            <td><strong> <asp:Label ID="lblTotal" runat="server"></asp:Label></strong> </td>
                                        </tr>
                                    </tbody>
                       

                                
                                    </table>

                                    <%--need to updated payment methods--%>
                                    <div id="payment">
                                        <ul class="payment_methods methods">
                                            <li class="payment_method_bacs">
                                                <input type="radio" data-order_button_text="" checked="checked" value="bacs" name="payment_method" class="input-radio" id="payment_method_bacs">
                                                <label >Direct Bank Transfer </label>
                                                <div class="payment_box payment_method_bacs">
                                                    <p>Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order won’t be shipped until the funds have cleared in our account.</p>
                                                </div>
                                            </li>
                                            <li class="payment_method_cheque">
                                                <input type="radio" data-order_button_text="" value="cheque" name="payment_method" class="input-radio" id="payment_method_cheque">
                                                <label >Cheque Payment </label>
                                                <div style="display:none;" class="payment_box payment_method_cheque">
                                                    <p>Please send your cheque to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</p>
                                                </div>
                                            </li>
                                            <li class="payment_method_paypal">
                                                <input type="radio" data-order_button_text="Proceed to PayPal" value="paypal" name="payment_method" class="input-radio" id="payment_method_paypal">
                                                <label >PayPal <img alt="PayPal Acceptance Mark" src="https://www.paypalobjects.com/webstatic/mktg/Logo/AM_mc_vs_ms_ae_UK.png"><a title="What is PayPal?" onclick="javascript:window.open('https://www.paypal.com/gb/webapps/mpp/paypal-popup','WIPaypal','toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=1060, height=700'); return false;" class="about_paypal" href="https://www.paypal.com/gb/webapps/mpp/paypal-popup">What is PayPal?</a>
                                                </label>
                                                <div style="display:none;" class="payment_box payment_method_paypal">
                                                    <p>Pay via PayPal; you can pay with your credit card if you don’t have a PayPal account.</p>
                                                </div>
                                            </li>
                                        </ul>

                                        <div class="form-row place-order">

                                            <asp:Button id="place_order" name="woocommerce_checkout_place_order" class="button alt" runat="server" Text="Place Order" OnClick="place_order_Click" />
                                            
                                            <asp:Label ID="lblMessage" runat="server"></asp:Label>

                                        </div>

                                        <div class="clear"></div>

                                    </div>
                                </div>
        </div>
                            




</asp:Content>

