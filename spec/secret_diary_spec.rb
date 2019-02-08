require_relative '../lib/secret_diary'

### WARNING ###
# For the purposes of this exercise, you are testing after
# the code has been written. This means your tests are prone
# to false positives!
#
# Make sure your tests work by deleting the bodies of the
# methods in `secret_diary.rb`, like this:
#
# ```ruby
# def write(new_message)
# end
# ```
#
# If they fail, then you know your tests are working
# as expected.
### WARNING ###

RSpec.describe SecretDiary do
  context "when locked" do
    #pending "refuses to be read"
    it 'refuses to be read' do
      james_diary = SecretDiary.new(james_diary)
      expect(james_diary.read).to eq "Go away!"
  end

    #pending "refuses to be written"
    it 'refuses to be written' do
      james_diary = SecretDiary.new(james_diary)
      expect(james_diary.write('Hello, James')).to eq "Go away!"
    end
  end

  context "when unlocked" do
    #pending "gets read"
    it "gets read" do
      james_diary = double('awda')

      diary = SecretDiary.new(james_diary)
      diary.unlock
      expect(james_diary).to receive(:read)
      diary.read

    end

    it "gets written" do
      james_diary = double('diary')
      diary = SecretDiary.new(james_diary)
      diary.unlock
      expect(james_diary).to receive(:write)
      diary.write('This Thing')
    end
  end
end
