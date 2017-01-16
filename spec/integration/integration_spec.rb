describe 'integration test' do

  it 'works ?' do
    class Citizen < Etheruby::Contract
      # Contract address on the blockchain
      at_address 0x57eb1e64d972d9937c6f6f07a865e91608252c97
      # ABI Definition
      method :greet
      method :multiple do
        parameters :uint256, :uint256
        returns :uint256
        value 1
        gas 100
        gas_price 10000
      end
    end
    Citizen.greet
    Citizen.multiple(4,5)
  end

end
