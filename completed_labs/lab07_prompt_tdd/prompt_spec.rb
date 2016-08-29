require './prompt'

describe Prompt do
  it 'can be customized' do
    prompt = Prompt.new('custom> ')
    expect(prompt.text).to eq('custom> ')
  end

  context 'user student' do
    before do
      ENV['USER'] = 'student'
    end
    it 'can show the current user' do
      prompt = Prompt.new('%{user}> ')
      expect(prompt.text).to eq('student> ')
    end
  end

  context 'user teacher' do
    before do
      ENV['USER'] = 'teacher'
    end
    it 'can show the current user' do
      prompt = Prompt.new('%{user}> ')
      expect(prompt.text).to eq('teacher> ')
    end
  end

  it 'can show the current directory' do
    pwd = ENV['PWD'] = '/somedir'
    prompt = Prompt.new('%{pwd}> ')
    expect(prompt.text).to eq("#{pwd}> ")
  end

  it 'can show red' do
    prompt = Prompt.new('%{red}RubyShell >')
    expect(prompt.text).to include("\e[31m")
  end

  it 'can show blue' do
    prompt = Prompt.new('%{blue}RubyShell >')
    expect(prompt.text).to include("\e[34m")
  end

  describe 'input' do
    it 'sends back the command and options' do
      prompt = Prompt.new('RubyShell> ')
      allow(prompt).to receive(:gets).and_return('echo hello world')
      expect(prompt.input).to eq(['echo', ['hello', 'world']])
    end
  end
end
