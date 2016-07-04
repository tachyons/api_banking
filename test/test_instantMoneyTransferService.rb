require 'minitest_helper'

class InstantMoneyTransferService < Minitest::Test
  
  def test_it_gives_back_a_initiateTransfer_result
    
    request = ApiBanking::InstantMoneyTransferService::InitiateTransfer::Request.new()
        
    request.uniqueRequestNo = SecureRandom.uuid.gsub!('-','')
    request.appID = 'app12345'
    request.customerID = '42989'
    request.beneficiaryMobileNo = '9637257928'
    request.transferAmount = 2000
    request.passCode = 1734
    request.remitterToBeneficiaryInfo = 'FUND TRANSFER'
        
    puts "#{self.class.name} : #{ApiBanking::InstantMoneyTransferService.transfer(request)}"
    
  end  

  def test_it_gives_back_a_addBeneficiary_result
    
    beneficiaryAddress = ApiBanking::InstantMoneyTransferService::AddBeneficiary::Address.new()
    request = ApiBanking::InstantMoneyTransferService::AddBeneficiary::Request.new()
        
    request.uniqueRequestNo = SecureRandom.uuid.gsub!('-','')
    request.appID = 'app12345'
    request.customerID = '42989'
    request.beneficiaryMobileNo = '9538321404'
    request.beneficiaryName = 'Lavanya'
    beneficiaryAddress.addressLine = 'Mysore'
        
    puts "#{self.class.name} : #{ApiBanking::InstantMoneyTransferService.add_beneficiary(request)}"
    
  end  
  
end