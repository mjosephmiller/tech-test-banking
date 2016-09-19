require 'account'

describe Account do

  subject { described_class.new(:statement) }
  let(:statement) {Statement.new}

  it 'should respond to debit with 2 argument' do
    expect(subject).to respond_to(:debit).with(2).arguments
  end

  it 'should return a statement when requested' do
    expect(subject).to respond_to(:get_statement).with(1).argument
  end

  it 'should respond to credit with 2 argument' do
    expect(subject).to respond_to(:credit).with(2).arguments
  end

  it 'should initalise with an empty balance' do
    expect(subject.balance).to eq(0)
  end

  it 'should decrease the balance with a debit' do
    subject.debit(200, statement)
    expect(subject.balance).to eq(-200)
  end

  it 'should increase the balance with a credit' do
    subject.credit(200, statement)
    expect(subject.balance).to eq(200)
  end


end
