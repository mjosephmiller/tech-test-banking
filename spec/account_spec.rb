require 'account'

describe Account do
  it 'should respond to debit' do
    expect(subject).to respond_to :debit
  end

  it 'should respond to balance?' do
    expect(subject).to respond_to :balance?
  end
end
