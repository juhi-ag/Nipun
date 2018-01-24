 <div class="form-group">
                       
                        	
                        	<form method="post" action="j_spring_security_check" id="adduser_form" class="form-horizontal">
	                            <div class="col-lg-12 ">
                        		<div class="alert alert-info">
                            		 <strong>TG Set</strong> 
                        		</div>
                        		</div>
	                            <div class="col-lg-10 ">
	                            <div class="col-lg-5 ">
	                            <label>Lube Oil Cooler</label></div> 
	                            <div class="col-lg-1 "></div>
	                            <div class="col-lg-5 ">
	                            <input type="text" onblur="findTotalCollingWatter()" class="form-control" id="j_lubeOilCooler" name="j_lubeOilCooler" placeholder="Lube Oil Cooler"  />
	                            <span id="errDiv"></span>
	                            </div>
	                            <div class="col-lg-1 ">CMH</div>
	                            </div>
	                            <div class="col-lg-10 ">
								<div class="col-lg-5 ">
								<label>Lube Oil Cooler Flow/Unit</label></div> 
								<div class="col-lg-1 "></div>
								<div class="col-lg-5 ">
	                            <input type="text" class="form-control" onblur="findTotalCollingWatter()" id="j_lubeOilCoolerFlow" name="j_lubeOilCoolerFlow" placeholder="Lube Oil Cooler Flow/Unit" />
	                            </div><div class="col-lg-1 "></div></div>
	                            <div class="col-lg-10 ">
	                            <div class="col-lg-5 ">
	                            <label>Lube Oil Cooler Total CW Required</label></div> 
	                            <div class="col-lg-1 "></div>
	                            <div class="col-lg-5 ">
	                            <input type="text" readonly="readonly" class="form-control" id="j_lubeOilCoolerTotalCWRequired" name="j_lubeOilCoolerTotalCWRequired" placeholder="Lube Oil Cooler Total CW Required"  />
	                            <span id="errDiv"></span>
								</div><div class="col-lg-1 "></div>
								</div>
								<!--  -->
								<div class="col-lg-10 ">
								<div class="col-lg-5 ">
	                            <label>Control Oil Cooler</label></div>
	                            <div class="col-lg-1 "></div>
	                             <div class="col-lg-5 ">
	                            <input type="text" onblur="findTotalCollingWatter()" class="form-control" id="j_controlOilCooler" name="j_controlOilCooler" placeholder="Control Oil Cooler"  />
	                            <span id="errDiv"></span></div><div class="col-lg-1 ">CMH</div>
								</div>
								<div class="col-lg-10 ">
								<div class="col-lg-5 ">
	                            <label>Control Oil Cooler Flow/Unit</label></div>
	                            <div class="col-lg-1 "></div>
	                             <div class="col-lg-5 ">
	                            <input type="text" onblur="findTotalCollingWatter()" class="form-control" id="j_controlOilCoolerFlow" name="j_controlOilCoolerFlow" placeholder="Control Oil Cooler Flow/Unit"  />
	                            <span id="errDiv"></span></div><div class="col-lg-1 "></div>
	                            </div>
	                            <div class="col-lg-10 ">
								<div class="col-lg-5 ">
	                            <label>Control Oil Cooler Total CW Required</label></div> 
	                            <div class="col-lg-1 "></div>
	                            <div class="col-lg-5 ">
	                            <input type="text" readonly="readonly" class="form-control" id="j_controlOilCoolerTotalCWRequired" name="j_controlOilCoolerTotalCWRequired" placeholder="Control Oil Cooler Total CW Required"  />
	                            <span id="errDiv"></span></div><div class="col-lg-1 "></div>
	                            </div>
	                            <!--   -->
	                            <div class="col-lg-10 ">
								<div class="col-lg-5 ">
	                            <label>Generator Air Coolers</label></div> 
	                            <div class="col-lg-1 "></div>
	                            <div class="col-lg-5 ">
	                            <input type="text" onblur="findTotalCollingWatter()" class="form-control" id="j_generatorAirCoolers" name="j_generatorAirCoolers" placeholder="Generator Air Coolers"  />
	                            <span id="errDiv"></span></div><div class="col-lg-1 ">CMH</div>
	                            </div>
								 <div class="col-lg-10 ">
								<div class="col-lg-5 ">
	                            <label>Generator Air Coolers Flow/Unit</label></div> 
	                            <div class="col-lg-1 "></div>
	                            <div class="col-lg-5 ">
	                            <input type="text" onblur="findTotalCollingWatter()" class="form-control" id="j_generatorAirCoolersFlow" name="j_generatorAirCoolersFlow" placeholder="Generator Air Coolers Flow/Unit"  />
	                            <span id="errDiv"></span></div><div class="col-lg-1 "></div>
	                            </div>
	                             <div class="col-lg-10 ">
								<div class="col-lg-5 ">
	                            <label>Generator Air Coolers Total CW Required</label></div> 
	                            <div class="col-lg-1 "></div>
	                            <div class="col-lg-5 ">
	                            <input type="text" readonly="readonly" class="form-control" id="j_generatorAirCoolersTotalCWRequired" name="j_generatorAirCoolersTotalCWRequired" placeholder="Generator Air Coolers Total CW Required"  />
	                            <span id="errDiv"></span></div><div class="col-lg-1 "></div>
	                            </div>
	                             <div class="col-lg-10 ">
								<div class="col-lg-5 ">
	                            <label>Total TG Set CW Required</label></div> 
	                            <div class="col-lg-1 "></div>
	                            <div class="col-lg-5 ">
	                            <input type="text" readonly="readonly" class="form-control" id="j_totalTGSetCWRequired" name="j_totalTGSetCWRequired" placeholder="Total TG Set CW Required"  />
	                            <span id="errDiv"></span></div><div class="col-lg-1 "></div>
	                            </div>
	                             <div class="col-lg-10 ">
								<div class="col-lg-5 ">
	                            <label>Insert Project Refrence For TG Set</label></div> 
	                            <div class="col-lg-1 "></div>
	                            <div class="col-lg-5 ">
	                            <input type="text" class="form-control" id="j_insertProjectRefrenceForTGSet" name="j_insertProjectRefrenceForTGSet" placeholder="Insert Project Refrence For TG Set"  />
	                            <span id="errDiv"></span></div><div class="col-lg-1 "></div>
	                            </div>
	                             <!-- Boiler -->
	                             <div class="col-lg-12 ">
                        		<div class="alert alert-info">
                            		 <strong>Boiler</strong> 
                        		</div>
                        		</div>
	                            <div class="col-lg-10 ">
	                            <div class="col-lg-5 ">
	                            <label>Sample Coolers</label></div> 
	                            <div class="col-lg-1 "></div>
	                            <div class="col-lg-5 ">
	                            <input type="text" onblur="findTotalCollingWatter()" class="form-control" id="j_sampleCoolers" name="j_sampleCoolers" placeholder="Sample Coolers"  />
	                            <span id="errDiv"></span>
	                            </div>
	                            <div class="col-lg-1 ">CMH</div>
	                            </div>
	                            <div class="col-lg-10 ">
								<div class="col-lg-5 ">
								<label>Sample Coolers Flow/Unit</label></div> 
								<div class="col-lg-1 "></div>
								<div class="col-lg-5 ">
	                            <input type="text" onblur="findTotalCollingWatter()" class="form-control" id="j_sampleCoolersFlow" name="j_sampleCoolersFlow" placeholder="Sample Coolers Flow/Unit" />
	                            </div><div class="col-lg-1 "></div></div>
	                            <div class="col-lg-10 ">
	                            <div class="col-lg-5 ">
	                            <label>Sample Coolers Total CW Required</label></div> 
	                            <div class="col-lg-1 "></div>
	                            <div class="col-lg-5 ">
	                            <input type="text" readonly="readonly" class="form-control" id="j_sampleCoolersTotalCWRequired" name="j_sampleCoolersTotalCWRequired" placeholder="Sample Coolers Total CW Required"  />
	                            <span id="errDiv"></span>
								</div><div class="col-lg-1 "></div>
								</div>
								<!--  -->
								<div class="col-lg-10 ">
								<div class="col-lg-5 ">
	                            <label>Feed Water Pumps</label></div>
	                            <div class="col-lg-1 "></div>
	                             <div class="col-lg-5 ">
	                            <input type="text" onblur="findTotalCollingWatter()" class="form-control" id="j_feedWaterPumps" name="j_feedWaterPumps" placeholder="Feed Water Pumps"  />
	                            <span id="errDiv"></span></div><div class="col-lg-1 ">CMH</div>
								</div>
								<div class="col-lg-10 ">
								<div class="col-lg-5 ">
	                            <label>Feed Water Pumps Flow/Unit</label></div>
	                            <div class="col-lg-1 "></div>
	                             <div class="col-lg-5 ">
	                            <input type="text" onblur="findTotalCollingWatter()" class="form-control" id="j_feedWaterPumpsFlow" name="j_feedWaterPumpsFlow" placeholder="Feed Water Pumps Flow/Unit"  />
	                            <span id="errDiv"></span></div><div class="col-lg-1 "></div>
	                            </div>
	                            <div class="col-lg-10 ">
								<div class="col-lg-5 ">
	                            <label>Feed Water Pumps Total CW Required</label></div> 
	                            <div class="col-lg-1 "></div>
	                            <div class="col-lg-5 ">
	                            <input type="text" readonly="readonly" class="form-control" id="j_feedWaterPumpsTotalCWRequired" name="j_feedWaterPumpsTotalCWRequired" placeholder="Feed Water Pumps Total CW Required"  />
	                            <span id="errDiv"></span></div><div class="col-lg-1 "></div>
	                            </div>
	                            <!-- Travelling Grate  -->
	                            <div class="col-lg-10 ">
								<div class="col-lg-5 ">
	                            <label>Travelling Grate</label></div> 
	                            <div class="col-lg-1 "></div>
	                            <div class="col-lg-5 ">
	                            <input type="text" onblur="findTotalCollingWatter()" class="form-control" id="j_travellingGrate" name="j_travellingGrate" placeholder="Travelling Grate"  />
	                            <span id="errDiv"></span></div><div class="col-lg-1 ">CMH</div>
	                            </div>
								 <div class="col-lg-10 ">
								<div class="col-lg-5 ">
	                            <label>Travelling Grate Flow/Unit</label></div> 
	                            <div class="col-lg-1 "></div>
	                            <div class="col-lg-5 ">
	                            <input type="text" onblur="findTotalCollingWatter()" class="form-control" id="j_travellingGrateFlow" name="j_travellingGrateFlow" placeholder="Travelling Grate Flow/Unit"  />
	                            <span id="errDiv"></span></div><div class="col-lg-1 "></div>
	                            </div>
	                             <div class="col-lg-10 ">
								<div class="col-lg-5 ">
	                            <label>Travelling Grate Total CW Required</label></div> 
	                            <div class="col-lg-1 "></div>
	                            <div class="col-lg-5 ">
	                            <input type="text" readonly="readonly" class="form-control" id="j_travellingGrateTotalCWRequired" name="j_travellingGrateTotalCWRequired" placeholder="Travelling Grate Total CW Required"  />
	                            <span id="errDiv"></span></div><div class="col-lg-1 "></div>
	                            </div>
	                             <div class="col-lg-10 ">
								<div class="col-lg-5 ">
	                            <label>Total Boiler CW Required</label></div> 
	                            <div class="col-lg-1 "></div>
	                            <div class="col-lg-5 ">
	                            <input type="text" readonly="readonly" class="form-control" id="j_totalBoilerCWRequired" name="j_totalBoilerCWRequired" placeholder="Total Boiler CW Required"  />
	                            <span id="errDiv"></span></div><div class="col-lg-1 "></div>
	                            </div>
	                             <div class="col-lg-10 ">
								<div class="col-lg-5 ">
	                            <label>Insert Project Refrence For Boiler</label></div> 
	                            <div class="col-lg-1 "></div>
	                            <div class="col-lg-5 ">
	                            <input type="text" class="form-control" id="j_insertProjectRefrenceForBoiler" name="j_insertProjectRefrenceForBoiler" placeholder="Insert Project Refrence For Boiler"  />
	                            <span id="errDiv"></span></div><div class="col-lg-1 "></div>
	                            </div>
	                             <!-- Other Auxiliaries -->
	                            <div class="col-lg-12 ">
                        		<div class="alert alert-info">
                            		 <strong>Other Auxiliaries</strong> 
                        		</div>
                        		</div>
	                            <div class="col-lg-10 ">
	                            <div class="col-lg-5 ">
	                            <label>Other misc.</label></div> 
	                            <div class="col-lg-1 "></div>
	                            <div class="col-lg-5 ">
	                            <input type="text" onblur="findTotalCollingWatter()" class="form-control" id="j_othermisc" name="j_othermisc" placeholder="Other misc."  />
	                            <span id="errDiv"></span>
	                            </div>
	                            <div class="col-lg-1 ">CMH</div>
	                            </div>
	                            <div class="col-lg-10 ">
								<div class="col-lg-5 ">
								<label>Other misc. Flow/Unit</label></div> 
								<div class="col-lg-1 "></div>
								<div class="col-lg-5 ">
	                            <input type="text" onblur="findTotalCollingWatter()" class="form-control" id="j_othermiscFlow" name="j_othermiscFlow" placeholder="Other misc. Flow/Unit" />
	                            </div><div class="col-lg-1 "></div></div>
	                            <div class="col-lg-10 ">
	                            <div class="col-lg-5 ">
	                            <label>Other misc. Total CW Required</label></div> 
	                            <div class="col-lg-1 "></div>
	                            <div class="col-lg-5 ">
	                            <input type="text" readonly="readonly" class="form-control" id="j_othermiscTotalCWRequired" name="j_othermiscTotalCWRequired" placeholder="Other misc. Total CW Required"  />
	                            <span id="errDiv"></span>
								</div><div class="col-lg-1 "></div>
								</div>
								<!--  -->
								<div class="col-lg-10 ">
								<div class="col-lg-5 ">
	                            <label>DG Oil Coolers</label></div>
	                            <div class="col-lg-1 "></div>
	                             <div class="col-lg-5 ">
	                            <input type="text" onblur="findTotalCollingWatter()" class="form-control" id="j_dGOilCoolers" name="j_dGOilCoolers" placeholder="DG Oil Coolers"  />
	                            <span id="errDiv"></span></div><div class="col-lg-1 ">CMH</div>
								</div>
								<div class="col-lg-10 ">
								<div class="col-lg-5 ">
	                            <label>DG Oil Coolers Flow/Unit</label></div>
	                            <div class="col-lg-1 "></div>
	                             <div class="col-lg-5 ">
	                            <input type="text" onblur="findTotalCollingWatter()" class="form-control" id="j_dGOilCoolersFlow" name="j_dGOilCoolersFlow" placeholder="DG Oil Coolers Flow/Unit"  />
	                            <span id="errDiv"></span></div><div class="col-lg-1 "></div>
	                            </div>
	                            <div class="col-lg-10 ">
								<div class="col-lg-5 ">
	                            <label>DG Oil Coolers Total CW Required</label></div> 
	                            <div class="col-lg-1 "></div>
	                            <div class="col-lg-5 ">
	                            <input type="text" readonly="readonly" class="form-control" id="j_dGOilCoolersTotalCWRequired" name="j_dGOilCoolersTotalCWRequired" placeholder="DG Oil Coolers Total CW Required"  />
	                            <span id="errDiv"></span></div><div class="col-lg-1 "></div>
	                            </div>
	                            <!-- DG Commissioing  -->
	                            <div class="col-lg-10 ">
								<div class="col-lg-5 ">
	                            <label>DG Commissioing</label></div> 
	                            <div class="col-lg-1 "></div>
	                            <div class="col-lg-5 ">
	                            <input type="text" onblur="findTotalCollingWatter()" class="form-control" id="j_dGCommissioing" name="j_dGCommissioing" placeholder="DG Commissioing"  />
	                            <span id="errDiv"></span></div><div class="col-lg-1 ">CMH</div>
	                            </div>
								 <div class="col-lg-10 ">
								<div class="col-lg-5 ">
	                            <label>DG Commissioing Flow/Unit</label></div> 
	                            <div class="col-lg-1 "></div>
	                            <div class="col-lg-5 ">
	                            <input type="text" onblur="findTotalCollingWatter()" class="form-control" id="j_dGCommissioingFlow" name="j_dGCommissioingFlow" placeholder="DG Commissioing Flow/Unit"  />
	                            <span id="errDiv"></span></div><div class="col-lg-1 "></div>
	                            </div>
	                             <div class="col-lg-10 ">
								<div class="col-lg-5 ">
	                            <label>DG Commissioing Total CW Required</label></div> 
	                            <div class="col-lg-1 "></div>
	                            <div class="col-lg-5 ">
	                            <input type="text" readonly="readonly" class="form-control" id="j_dGCommissioingTotalCWRequired" name="j_dGCommissioingTotalCWRequired" placeholder="DG Commissioing Total CW Required"  />
	                            <span id="errDiv"></span></div><div class="col-lg-1 "></div>
	                            </div>
	                             <div class="col-lg-10 ">
								<div class="col-lg-5 ">
	                            <label>Total Other Auxiliaries CW Required</label></div> 
	                            <div class="col-lg-1 "></div>
	                            <div class="col-lg-5 ">
	                            <input type="text" readonly="readonly" class="form-control" id="j_totalOtherAuxiliariesCWRequired" name="j_totalOtherAuxiliariesCWRequired" placeholder="Total Other Auxiliaries CW Required"  />
	                            <span id="errDiv"></span></div><div class="col-lg-1 "></div>
	                            </div>
	                             <div class="col-lg-10 ">
								<div class="col-lg-5 ">
	                            <label>Insert Project Refrence For Other Auxiliaries</label></div> 
	                            <div class="col-lg-1 "></div>
	                            <div class="col-lg-5 ">
	                            <input type="text" class="form-control" id="j_insertProjectRefrenceForOtherAuxiliaries" name="j_insertProjectRefrenceForOtherAuxiliaries" placeholder="Insert Project Refrence For Other Auxiliaries"  />
	                            <span id="errDiv"></span></div><div class="col-lg-1 "></div>
	                            </div>
	                            <!--Total  -->
	                            <div class="col-lg-12 ">
                        		<div class="alert alert-info">
                            		 <strong></strong> 
                        		</div>
                        		</div>
	                            <div class="col-lg-10 ">
								<div class="col-lg-5 ">
	                            <label>Total</label></div> 
	                            <div class="col-lg-1 "></div>
	                            <div class="col-lg-5 ">
	                            <input type="text" readonly="readonly" class="form-control" id="j_total" name="j_total" placeholder="Total"  />
	                            <span id="errDiv"></span></div><div class="col-lg-1 "></div>
	                            </div>
	                             

	                            <span id="errDiv1"></span>
	                             <div class="col-lg-4 col-md-4">
								<!-- <a href="dashboard.html" target="_blank" class="btn login-btn-danger login-btn-lg btn-block">login</a> -->
								<input type="button" id="sbmt_btn" value="Save" class="btn login-btn-danger login-btn-lg btn-block" onClick="validateLogin()">
								</div>
							</form>
						</div>