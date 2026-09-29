require_relative '../caesar_cipher'

describe '#different shift posibilities' do
  let(:positive_cipher) { caesar_cipher('test', 5) }
  let(:negative_cipher) { caesar_cipher('test', -5) }
  let(:large_cipher) { caesar_cipher('a', 27) }
  let(:uppercase_cipher) { caesar_cipher('A', 1) }
  let(:lowercase_cipher) { caesar_cipher('a', 1) }
  let(:non_alphabet_cipher) { caesar_cipher('# .', 1) }

  it 'returns result from positive shift' do
    expect(positive_cipher).to eq('yjxy')
  end

  it 'returns result from negative shift' do
    expect(negative_cipher).to eq('ozno')
  end

  it 'returns result from a number greater than 26' do
    expect(large_cipher).to eq('b')
  end

  it 'returns uppercase result from an uppercase letter' do
    expect(uppercase_cipher).to eq('B')
  end

  it 'returns lowercase result from an lowercase letter' do
    expect(lowercase_cipher).to eq('b')
  end

  it 'returns no error or change result from symbols in the text string' do
    expect(non_alphabet_cipher).to eq('# .')
  end
end
