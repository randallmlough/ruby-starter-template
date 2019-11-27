require 'greeting'



describe 'say_hello' do
  it 'say_hello should accept a string' do
    expect { say_hello("james") 
    }.to_not raise_error
  end

  it 'return a sentence greeting the person' do
    expect(say_hello("james")).to eq("hello, james") 
  end
end

describe 'say_hello_block' do
  it 'say_hello_block should accept a string and a block' do
    expect { say_hello_block("james") { |s| s + ", it's nice to meet you."}
    }.to_not raise_error
  end

  it 'return a sentence greeting the person' do
    expect(say_hello_block("james") { |s| s + ", it's nice to meet you."}).to eq("james, it's nice to meet you.") 
  end
end

