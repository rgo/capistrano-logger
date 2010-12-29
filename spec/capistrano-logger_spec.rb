require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Capistrano::Speak, "loaded into a configuration" do
  before do
    @configuration = Capistrano::Configuration.new
    Capistrano::Speak.load_into(@configuration)
  end

  describe 'speak task' do
    before do
      @configuration.find_and_execute_task('speak')
    end

    it "should define message" do
      @configuration.fetch(:message).should == 'oh hai'
    end
  end

end

