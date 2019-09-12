<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:ipo="http://www.altova.com/IPO" xmlns:n1="http://www.xmlspy.com/schemas/orgchart" xmlns:xdt="http://www.w3.org/2005/xpath-datatypes" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
	<xsl:output version="1.0" method="html" indent="no" encoding="UTF-8"/>
	<xsl:param name="SV_OutputFormat" select="'HTML'"/>
	<xsl:variable name="XML" select="/"/>
	<xsl:template match="/">
		<html>
			<head>
				<title/>
			</head>
			<body>
				<xsl:for-each select="$XML">
					<xsl:for-each select="n1:OrgChart">
						<xsl:for-each select="n1:CompanyLogo">
							<div style="border-bottom-color:#0588BA; border-bottom-style:solid; border-bottom-width:medium; border-width:4pt; padding-bottom:10px; padding-left:10px; ">
								<xsl:for-each select="@href">
									<a>
										<xsl:choose>
											<xsl:when test="substring(string('http://www.nanonull.com/'), 1, 1) = '#'">
												<xsl:attribute name="href">
													<xsl:value-of select="'http://www.nanonull.com/'"/>
												</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="href">
													<xsl:if test="substring(string('http://www.nanonull.com/'), 2, 1) = ':'">
														<xsl:text>file:///</xsl:text>
													</xsl:if>
													<xsl:value-of select="translate(string('http://www.nanonull.com/'), '&#x5c;', '/')"/>
												</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<img border="0">
											<xsl:attribute name="src">
												<xsl:if test="substring(string(.), 2, 1) = ':'">
													<xsl:text>file:///</xsl:text>
												</xsl:if>
												<xsl:value-of select="translate(string(.), '&#x5c;', '/')"/>
											</xsl:attribute>
										</img>
									</a>
								</xsl:for-each>
							</div>
						</xsl:for-each>
						<br/>
						<xsl:for-each select="n1:Name">
							<span style="color:#0588BA; font-family:Arial; font-size:20pt; font-weight:bold; ">
								<xsl:apply-templates/>
							</span>
						</xsl:for-each>
						<br/>
						<br/>
						<xsl:for-each select="n1:Office">
							<br/>
							<div style="border-top-color:#0588ba; border-top-style:solid; border-top-width:2pt; ">
								<br/>
								<xsl:for-each select="n1:Name">
									<span style="color:#707070; font-family:Arial; font-size:15pt; font-weight:bold; ">
										<xsl:apply-templates/>
									</span>
								</xsl:for-each>
								<br/>
								<br/>
								<span style="color:#808080; font-family:Arial; font-size:smaller; font-weight:bold; ">
									<xsl:text>Location: </xsl:text>
								</span>
								<xsl:choose>
									<xsl:when test="not(n1:Address or  n1:Address_EU)">
										<xsl:for-each select="n1:Location">
											<select>
												<option value="US">
													<xsl:if test="string(.)='US'">
														<xsl:attribute name="selected">1</xsl:attribute>
													</xsl:if>US</option>
												<option value="EU">
													<xsl:if test="string(.)='EU'">
														<xsl:attribute name="selected">1</xsl:attribute>
													</xsl:if>EU</option>
											</select>
										</xsl:for-each>
									</xsl:when>
									<xsl:otherwise>
										<xsl:for-each select="n1:Location">
											<span style="color:#808080; font-weight:bold; ">
												<xsl:apply-templates/>
											</span>
										</xsl:for-each>
									</xsl:otherwise>
								</xsl:choose>
							</div>
							<table border="1" cellspacing="0" width="100%">
								<tbody>
									<tr>
										<td valign="top" width="60%">
											<xsl:choose>
												<xsl:when test="n1:Location =&quot;US&quot;">
													<xsl:for-each select="n1:Address">
														<table border="0" cellspacing="4px" width="100%">
															<tbody>
																<tr>
																	<td width="30%">
																		<span style="font-weight:bold; ">
																			<xsl:text>Street: </xsl:text>
																		</span>
																	</td>
																	<td width="70%">
																		<xsl:for-each select="ipo:street">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																	</td>
																</tr>
																<tr>
																	<td width="30%">
																		<span style="font-weight:bold; ">
																			<xsl:text>City:</xsl:text>
																		</span>
																	</td>
																	<td width="70%">
																		<xsl:for-each select="ipo:city">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																	</td>
																</tr>
																<tr>
																	<td width="30%">
																		<span style="font-weight:bold; ">
																			<xsl:text>State &amp; Zip:</xsl:text>
																		</span>
																	</td>
																	<td width="70%">
																		<xsl:for-each select="ipo:state">
																			<select>
																				<option value="AK">
																					<xsl:if test="string(.)='AK'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>AK</option>
																				<option value="AL">
																					<xsl:if test="string(.)='AL'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>AL</option>
																				<option value="AR">
																					<xsl:if test="string(.)='AR'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>AR</option>
																				<option value="AZ">
																					<xsl:if test="string(.)='AZ'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>AZ</option>
																				<option value="CA">
																					<xsl:if test="string(.)='CA'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>CA</option>
																				<option value="CO">
																					<xsl:if test="string(.)='CO'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>CO</option>
																				<option value="CT">
																					<xsl:if test="string(.)='CT'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>CT</option>
																				<option value="DC">
																					<xsl:if test="string(.)='DC'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>DC</option>
																				<option value="DE">
																					<xsl:if test="string(.)='DE'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>DE</option>
																				<option value="FL">
																					<xsl:if test="string(.)='FL'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>FL</option>
																				<option value="GA">
																					<xsl:if test="string(.)='GA'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>GA</option>
																				<option value="GU">
																					<xsl:if test="string(.)='GU'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>GU</option>
																				<option value="HI">
																					<xsl:if test="string(.)='HI'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>HI</option>
																				<option value="IA">
																					<xsl:if test="string(.)='IA'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>IA</option>
																				<option value="ID">
																					<xsl:if test="string(.)='ID'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>ID</option>
																				<option value="IL">
																					<xsl:if test="string(.)='IL'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>IL</option>
																				<option value="IN">
																					<xsl:if test="string(.)='IN'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>IN</option>
																				<option value="KS">
																					<xsl:if test="string(.)='KS'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>KS</option>
																				<option value="KY">
																					<xsl:if test="string(.)='KY'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>KY</option>
																				<option value="LA">
																					<xsl:if test="string(.)='LA'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>LA</option>
																				<option value="MA">
																					<xsl:if test="string(.)='MA'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>MA</option>
																				<option value="MD">
																					<xsl:if test="string(.)='MD'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>MD</option>
																				<option value="ME">
																					<xsl:if test="string(.)='ME'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>ME</option>
																				<option value="MI">
																					<xsl:if test="string(.)='MI'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>MI</option>
																				<option value="MN">
																					<xsl:if test="string(.)='MN'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>MN</option>
																				<option value="MO">
																					<xsl:if test="string(.)='MO'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>MO</option>
																				<option value="MS">
																					<xsl:if test="string(.)='MS'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>MS</option>
																				<option value="MT">
																					<xsl:if test="string(.)='MT'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>MT</option>
																				<option value="NC">
																					<xsl:if test="string(.)='NC'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>NC</option>
																				<option value="ND">
																					<xsl:if test="string(.)='ND'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>ND</option>
																				<option value="NE">
																					<xsl:if test="string(.)='NE'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>NE</option>
																				<option value="NH">
																					<xsl:if test="string(.)='NH'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>NH</option>
																				<option value="NJ">
																					<xsl:if test="string(.)='NJ'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>NJ</option>
																				<option value="NM">
																					<xsl:if test="string(.)='NM'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>NM</option>
																				<option value="NV">
																					<xsl:if test="string(.)='NV'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>NV</option>
																				<option value="NY">
																					<xsl:if test="string(.)='NY'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>NY</option>
																				<option value="OH">
																					<xsl:if test="string(.)='OH'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>OH</option>
																				<option value="OK">
																					<xsl:if test="string(.)='OK'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>OK</option>
																				<option value="OR">
																					<xsl:if test="string(.)='OR'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>OR</option>
																				<option value="PA">
																					<xsl:if test="string(.)='PA'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>PA</option>
																				<option value="PR">
																					<xsl:if test="string(.)='PR'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>PR</option>
																				<option value="RI">
																					<xsl:if test="string(.)='RI'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>RI</option>
																				<option value="SC">
																					<xsl:if test="string(.)='SC'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>SC</option>
																				<option value="SD">
																					<xsl:if test="string(.)='SD'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>SD</option>
																				<option value="TN">
																					<xsl:if test="string(.)='TN'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>TN</option>
																				<option value="TX">
																					<xsl:if test="string(.)='TX'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>TX</option>
																				<option value="UT">
																					<xsl:if test="string(.)='UT'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>UT</option>
																				<option value="VA">
																					<xsl:if test="string(.)='VA'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>VA</option>
																				<option value="VI">
																					<xsl:if test="string(.)='VI'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>VI</option>
																				<option value="VT">
																					<xsl:if test="string(.)='VT'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>VT</option>
																				<option value="WA">
																					<xsl:if test="string(.)='WA'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>WA</option>
																				<option value="WI">
																					<xsl:if test="string(.)='WI'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>WI</option>
																				<option value="WV">
																					<xsl:if test="string(.)='WV'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>WV</option>
																				<option value="WY">
																					<xsl:if test="string(.)='WY'">
																						<xsl:attribute name="selected">1</xsl:attribute>
																					</xsl:if>WY</option>
																			</select>
																		</xsl:for-each>
																		<span>
																			<xsl:text>&#160;</xsl:text>
																		</span>
																		<xsl:for-each select="ipo:zip">
																			<input>
																				<xsl:attribute name="value">
																					<xsl:value-of select="string(.)"/>
																				</xsl:attribute>
																			</input>
																		</xsl:for-each>
																	</td>
																</tr>
															</tbody>
														</table>
													</xsl:for-each>
												</xsl:when>
												<xsl:when test="n1:Location =&quot;EU&quot;">
													<xsl:for-each select="n1:Address_EU">
														<table border="0" cellspacing="4px" width="100%">
															<tbody>
																<tr>
																	<td width="30%">
																		<span style="font-weight:bold; ">
																			<xsl:text>Street:</xsl:text>
																		</span>
																	</td>
																	<td width="70%">
																		<xsl:for-each select="ipo:street">
																			<input>
																				<xsl:attribute name="value">
																					<xsl:value-of select="string(.)"/>
																				</xsl:attribute>
																			</input>
																		</xsl:for-each>
																	</td>
																</tr>
																<tr>
																	<td width="30%">
																		<span style="font-weight:bold; ">
																			<xsl:text>City:</xsl:text>
																		</span>
																	</td>
																	<td width="70%">
																		<xsl:for-each select="ipo:city">
																			<input>
																				<xsl:attribute name="value">
																					<xsl:value-of select="string(.)"/>
																				</xsl:attribute>
																			</input>
																		</xsl:for-each>
																	</td>
																</tr>
																<tr>
																	<td width="30%">
																		<span style="font-weight:bold; ">
																			<xsl:text>Post Code:</xsl:text>
																		</span>
																	</td>
																	<td width="70%">
																		<xsl:for-each select="ipo:postcode">
																			<input>
																				<xsl:attribute name="value">
																					<xsl:value-of select="string(.)"/>
																				</xsl:attribute>
																			</input>
																		</xsl:for-each>
																	</td>
																</tr>
															</tbody>
														</table>
													</xsl:for-each>
												</xsl:when>
											</xsl:choose>
										</td>
										<td valign="top" width="40%">
											<table border="0" cellspacing="4" width="100%">
												<tbody>
													<tr>
														<td width="25%">
															<span style="font-weight:bold; ">
																<xsl:text>Phone:</xsl:text>
															</span>
														</td>
														<td width="75%">
															<xsl:for-each select="n1:Phone">
																<xsl:apply-templates/>
															</xsl:for-each>
														</td>
													</tr>
													<tr>
														<td width="25%">
															<span style="font-weight:bold; ">
																<xsl:text>Fax:</xsl:text>
															</span>
														</td>
														<td width="75%">
															<xsl:for-each select="n1:Fax">
																<xsl:apply-templates/>
															</xsl:for-each>
														</td>
													</tr>
													<tr>
														<td width="25%">
															<span style="font-weight:bold; ">
																<xsl:text>E-mail:</xsl:text>
															</span>
														</td>
														<td width="75%">
															<xsl:for-each select="n1:EMail">
																<a>
																	<xsl:choose>
																		<xsl:when test="substring(string(concat('mailto:',.)), 1, 1) = '#'">
																			<xsl:attribute name="href">
																				<xsl:value-of select="concat('mailto:',.)"/>
																			</xsl:attribute>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:attribute name="href">
																				<xsl:if test="substring(string(concat('mailto:',.)), 2, 1) = ':'">
																					<xsl:text>file:///</xsl:text>
																				</xsl:if>
																				<xsl:value-of select="translate(string(concat('mailto:',.)), '&#x5c;', '/')"/>
																			</xsl:attribute>
																		</xsl:otherwise>
																	</xsl:choose>
																	<xsl:apply-templates/>
																</a>
															</xsl:for-each>
														</td>
													</tr>
												</tbody>
											</table>
										</td>
									</tr>
								</tbody>
							</table>
							<br/>
							<xsl:choose>
								<xsl:when test="n1:Address">
									<xsl:for-each select="n1:Address">
										<xsl:for-each select="ipo:city">
											<span style="color:#004080; font-family:Arial; font-size:10pt; font-weight:bold; text-decoration:underline; ">
												<xsl:apply-templates/>
											</span>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:when>
								<xsl:when test="n1:Address_EU">
									<xsl:for-each select="n1:Address_EU">
										<xsl:for-each select="ipo:city">
											<span style="color:#004080; font-family:Arial; font-size:10pt; font-weight:bold; text-decoration:underline; ">
												<xsl:apply-templates/>
											</span>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:when>
							</xsl:choose>
							<span style="color:#004080; font-family:Arial; font-size:10pt; font-weight:bold; text-decoration:underline; ">
								<xsl:text> Office Summary:</xsl:text>
							</span>
							<span>
								<xsl:text>&#160; </xsl:text>
							</span>
							<span style="color:#004080; font-family:Arial; font-size:10pt; font-weight:bold; ">
								<xsl:value-of select="count(n1:Department)"/>
							</span>
							<span style="color:#004080; font-family:Arial; font-size:10pt; font-weight:bold; ">
								<xsl:text> department</xsl:text>
							</span>
							<xsl:if test="count(n1:Department) != 1">
								<span style="color:#004080; font-family:Arial; font-size:10pt; font-weight:bold; ">
									<xsl:text>s</xsl:text>
								</span>
							</xsl:if>
							<span style="color:#004080; font-family:Arial; font-size:10pt; font-weight:bold; ">
								<xsl:text>, </xsl:text>
							</span>
							<span style="color:#004080; font-family:Arial; font-size:10pt; font-weight:bold; ">
								<xsl:value-of select="count(n1:Department/n1:Person)"/>
							</span>
							<span style="color:#004080; font-family:Arial; font-size:10pt; font-weight:bold; ">
								<xsl:text> employee</xsl:text>
							</span>
							<xsl:if test="count(n1:Department/n1:Person) != 1">
								<span style="color:#004080; font-family:Arial; font-size:10pt; font-weight:bold; ">
									<xsl:text>s</xsl:text>
								</span>
							</xsl:if>
							<span style="color:#004080; font-family:Arial; font-size:10pt; font-weight:bold; ">
								<xsl:text>.</xsl:text>
							</span>
							<xsl:for-each select="n1:Desc">
								<xsl:for-each select="n1:para">
									<p>
										<xsl:apply-templates/>
									</p>
								</xsl:for-each>
							</xsl:for-each>
							<xsl:for-each select="n1:Department">
								<br/>
								<xsl:for-each select="n1:Name">
									<span style="color:#D39658; font-family:Arial; font-weight:bold; ">
										<xsl:apply-templates/>
									</span>
								</xsl:for-each>
								<span>
									<xsl:text>&#160; </xsl:text>
								</span>
								<span style="color:#D39658; font-family:Arial; font-weight:bold; ">
									<xsl:text>( </xsl:text>
								</span>
								<span style="color:#D39658; font-family:Arial; font-weight:bold; ">
									<xsl:value-of select="count(n1:Person)"/>
								</span>
								<span style="color:#D39658; font-family:Arial; font-weight:bold; ">
									<xsl:text> )</xsl:text>
								</span>
								<br/>
								<table border="1" cellpadding="3" cellspacing="0" width="100%">
									<thead>
										<tr bgcolor="#D2C8AE">
											<td align="center" bgcolor="#D2C8AE" rowspan="2" width="10%">
												<span style="color:#606060; font-family:Arial; font-weight:bold; ">
													<xsl:text>First</xsl:text>
												</span>
											</td>
											<td align="center" bgcolor="#D2C8AE" rowspan="2" width="12%">
												<span style="color:#606060; font-family:Arial; font-weight:bold; ">
													<xsl:text>Last</xsl:text>
												</span>
											</td>
											<td align="center" bgcolor="#D2C8AE" rowspan="2" width="16%">
												<span style="color:#606060; font-family:Arial; font-weight:bold; ">
													<xsl:text>Title</xsl:text>
												</span>
												<br/>
												<xsl:choose>
													<xsl:when test="$SV_OutputFormat = &apos;Authentic&apos;"/>
													<xsl:when test="$SV_OutputFormat = &apos;HTML&apos;">
														<span style="color:#606060; font-family:Arial; font-size:x-small; font-weight:bold; ">
															<xsl:text>(sorted by)</xsl:text>
														</span>
													</xsl:when>
													<xsl:when test="$SV_OutputFormat = &apos;RTF&apos;">
														<span style="color:#606060; font-family:Arial; font-size:x-small; font-weight:bold; ">
															<xsl:text>(sorted by)</xsl:text>
														</span>
													</xsl:when>
													<xsl:when test="$SV_OutputFormat = &apos;PDF&apos;">
														<span style="color:#606060; font-family:Arial; font-size:x-small; font-weight:bold; ">
															<xsl:text>(sorted by)</xsl:text>
														</span>
													</xsl:when>
												</xsl:choose>
											</td>
											<td align="center" bgcolor="#D2C8AE" rowspan="2" width="5%">
												<span style="color:#606060; font-family:Arial; font-weight:bold; ">
													<xsl:text>Ext</xsl:text>
												</span>
											</td>
											<td align="center" bgcolor="#D2C8AE" rowspan="2" width="23%">
												<span style="color:#606060; font-family:Arial; font-weight:bold; ">
													<xsl:text>EMail</xsl:text>
												</span>
											</td>
											<td align="center" bgcolor="#D2C8AE" rowspan="2" width="10%">
												<span style="color:#606060; font-family:Arial; font-weight:bold; ">
													<xsl:text>Shares</xsl:text>
												</span>
											</td>
											<td align="center" colspan="3" width="8%">
												<span style="color:#606060; font-family:Arial; font-weight:bold; ">
													<xsl:text>Leave</xsl:text>
												</span>
											</td>
										</tr>
										<tr>
											<td align="center" bgcolor="#D2C8AE" width="8%">
												<span style="color:#606060; font-family:Arial; font-weight:bold; ">
													<xsl:text>Total</xsl:text>
												</span>
											</td>
											<td align="center" bgcolor="#D2C8AE" width="8%">
												<span style="color:#606060; font-family:Arial; font-weight:bold; ">
													<xsl:text>Used</xsl:text>
												</span>
											</td>
											<td align="center" bgcolor="#D2C8AE" width="8%">
												<span style="color:#606060; font-family:Arial; font-weight:bold; ">
													<xsl:text>Left</xsl:text>
												</span>
											</td>
										</tr>
									</thead>
									<tfoot>
										<tr bgcolor="#F2F0E6">
											<td align="left" colspan="5" valign="top" width="23%">
												<span style="color:#004080; font-family:Arial; font-size:8pt; font-weight:bold; ">
													<xsl:text>Employees:&#160; </xsl:text>
												</span>
												<span style="color:#004080; font-family:Arial; font-size:8pt; font-weight:bold; ">
													<xsl:value-of select="count(  n1:Person  )"/>
												</span>
												<span style="font-size:8pt; ">
													<xsl:text>&#160;</xsl:text>
												</span>
												<span style="color:#004080; font-family:Arial; font-size:8pt; font-weight:bold; ">
													<xsl:text>(</xsl:text>
												</span>
												<span style="color:#004080; font-family:Arial; font-size:8pt; font-weight:bold; ">
													<xsl:value-of select="round ((count(  n1:Person  ) ) div ( count( ../n1:Department/ n1:Person  ) ) * 100)"/>
												</span>
												<span style="color:#004080; font-family:Arial; font-size:8pt; font-weight:bold; ">
													<xsl:text>% of Office, </xsl:text>
												</span>
												<span style="color:#004080; font-family:Arial; font-size:8pt; font-weight:bold; ">
													<xsl:value-of select="round ((count(  n1:Person  ) ) div ( count( ../../n1:Office/n1:Department/ n1:Person  ) ) * 100)"/>
												</span>
												<span style="color:#004080; font-family:Arial; font-size:8pt; font-weight:bold; ">
													<xsl:text>% of Company)</xsl:text>
												</span>
											</td>
											<td align="left" colspan="4" width="10%">
												<span style="color:#004080; font-family:Arial; font-size:8pt; font-weight:bold; ">
													<xsl:text>Shares: </xsl:text>
												</span>
												<span style="color:#004080; font-family:Arial; font-size:8pt; font-weight:bold; ">
													<xsl:value-of select="sum(  n1:Person/n1:Shares  )"/>
												</span>
												<span style="font-size:8pt; ">
													<xsl:text>&#160;</xsl:text>
												</span>
												<span style="color:#004080; font-family:Arial; font-size:8pt; font-weight:bold; ">
													<xsl:text>(</xsl:text>
												</span>
												<span style="color:#004080; font-family:Arial; font-size:8pt; font-weight:bold; ">
													<xsl:value-of select="round((sum(  n1:Person/n1:Shares  ) ) div (sum(../n1:Department/ n1:Person/n1:Shares ) ) * 100)"/>
												</span>
												<span style="color:#004080; font-family:Arial; font-size:8pt; font-weight:bold; ">
													<xsl:text>% of Office, </xsl:text>
												</span>
												<span style="color:#004080; font-family:Arial; font-size:8pt; font-weight:bold; ">
													<xsl:value-of select="round((sum(  n1:Person/n1:Shares  ) ) div (sum(../../n1:Office/n1:Department/ n1:Person/n1:Shares  )) * 100)"/>
												</span>
												<span style="color:#004080; font-family:Arial; font-size:8pt; font-weight:bold; ">
													<xsl:text>% of Company)</xsl:text>
												</span>
											</td>
										</tr>
										<tr bgcolor="#F2F0E6">
											<td align="left" colspan="9" width="23%">
												<span style="color:#004080; font-family:Arial; font-size:8pt; font-weight:bold; ">
													<xsl:text>Non-Shareholders: </xsl:text>
												</span>
												<span style="color:#004040; font-family:Arial; font-size:8pt; font-weight:bold; ">
													<xsl:text>&#160;</xsl:text>
												</span>
												<xsl:for-each select="n1:Person">
													<xsl:if test="n1:Shares &lt;= 0 or not (n1:Shares)">
														<xsl:for-each select="n1:First">
															<span style="color:#004040; font-family:Arial; font-size:8pt; font-weight:bold; ">
																<xsl:apply-templates/>
															</span>
														</xsl:for-each>
														<span style="color:#004040; font-family:Arial; font-size:8pt; font-weight:bold; ">
															<xsl:text>&#160;</xsl:text>
														</span>
														<xsl:for-each select="n1:Last">
															<span style="color:#004040; font-family:Arial; font-size:8pt; font-weight:bold; ">
																<xsl:apply-templates/>
															</span>
														</xsl:for-each>
														<xsl:if test="following-sibling::n1:Person[n1:Shares&lt;=0 or not(n1:Shares)]">
															<span style="color:#004040; font-family:Arial; font-size:8pt; font-weight:bold; ">
																<xsl:text>, </xsl:text>
															</span>
														</xsl:if>
													</xsl:if>
												</xsl:for-each>
												<xsl:if test="count(  n1:Person  ) = count(  n1:Person [n1:Shares&gt;0] )">
													<span style="color:#004040; font-family:Arial; font-size:8pt; font-weight:bold; ">
														<xsl:text>None</xsl:text>
													</span>
												</xsl:if>
												<span style="color:#004040; font-family:Arial; font-size:8pt; font-weight:bold; ">
													<xsl:text>.</xsl:text>
												</span>
											</td>
										</tr>
									</tfoot>
									<tbody>
										<xsl:for-each select="n1:Person">
											<xsl:sort select="n1:Title" data-type="text" order="ascending"/>
											<tr bgcolor="{if ( position() mod 2 ) then &quot;antiquewhite&quot; else &quot;navajowhite&quot;}">
												<td width="10%">
													<xsl:for-each select="n1:First">
														<xsl:choose>
															<xsl:when test="../n1:Shares &gt; 0">
																<span style="font-size:10pt; font-weight:bold; ">
																	<xsl:apply-templates/>
																</span>
															</xsl:when>
															<xsl:otherwise>
																<span style="font-size:10pt; ">
																	<xsl:apply-templates/>
																</span>
															</xsl:otherwise>
														</xsl:choose>
													</xsl:for-each>
												</td>
												<td width="12%">
													<xsl:for-each select="n1:Last">
														<xsl:choose>
															<xsl:when test="../n1:Shares &gt; 0">
																<span style="font-size:10pt; font-weight:bold; ">
																	<xsl:apply-templates/>
																</span>
															</xsl:when>
															<xsl:otherwise>
																<span style="font-size:10pt; ">
																	<xsl:apply-templates/>
																</span>
															</xsl:otherwise>
														</xsl:choose>
													</xsl:for-each>
												</td>
												<td width="16%">
													<xsl:for-each select="n1:Title">
														<span style="font-size:10pt; ">
															<xsl:apply-templates/>
														</span>
													</xsl:for-each>
												</td>
												<td align="center" width="5%">
													<xsl:for-each select="n1:PhoneExt">
														<span style="font-size:10pt; ">
															<xsl:apply-templates/>
														</span>
													</xsl:for-each>
												</td>
												<td width="23%">
													<xsl:for-each select="n1:EMail">
														<a>
															<xsl:choose>
																<xsl:when test="substring(string(concat('mailto:',.)), 1, 1) = '#'">
																	<xsl:attribute name="href">
																		<xsl:value-of select="concat('mailto:',.)"/>
																	</xsl:attribute>
																</xsl:when>
																<xsl:otherwise>
																	<xsl:attribute name="href">
																		<xsl:if test="substring(string(concat('mailto:',.)), 2, 1) = ':'">
																			<xsl:text>file:///</xsl:text>
																		</xsl:if>
																		<xsl:value-of select="translate(string(concat('mailto:',.)), '&#x5c;', '/')"/>
																	</xsl:attribute>
																</xsl:otherwise>
															</xsl:choose>
															<span style="font-size:10pt; ">
																<xsl:apply-templates/>
															</span>
														</a>
													</xsl:for-each>
												</td>
												<td align="center" width="10%">
													<xsl:for-each select="n1:Shares">
														<span style="font-size:10pt; ">
															<xsl:apply-templates/>
														</span>
													</xsl:for-each>
												</td>
												<td align="center" width="8%">
													<xsl:for-each select="n1:LeaveTotal">
														<span style="font-size:10pt; ">
															<xsl:apply-templates/>
														</span>
													</xsl:for-each>
												</td>
												<td align="center" width="8%">
													<xsl:for-each select="n1:LeaveUsed">
														<span style="font-size:10pt; ">
															<xsl:apply-templates/>
														</span>
													</xsl:for-each>
												</td>
												<td align="center" width="8%">
													<span style="font-size:10pt; ">
														<xsl:value-of select="n1:LeaveTotal - n1:LeaveUsed"/>
													</span>
												</td>
											</tr>
										</xsl:for-each>
									</tbody>
								</table>
								<br/>
							</xsl:for-each>
						</xsl:for-each>
						<br/>
					</xsl:for-each>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="n1:bold">
		<span style="font-weight:bold; ">
			<xsl:apply-templates/>
		</span>
	</xsl:template>
	<xsl:template match="n1:italic">
		<span style="font-style:italic; ">
			<xsl:apply-templates/>
		</span>
	</xsl:template>
</xsl:stylesheet>
