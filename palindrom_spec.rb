require 'rspec'
require './palindrom'

RSpec.describe LongestPalindromSubsequence do
  describe '#example' do
    subject { LongestPalindromSubsequence.new(string).example }

    context 'contains palindrome' do
      describe 'two characters' do
        let(:string) { 'ZZ' }

        it 'returns the two characters' do
          expect(subject).to eq(string)
        end
      end

      describe 'even characters' do
        let(:string) { 'redder' }

        it 'returns the string' do
          expect(subject).to eq(string)
        end
      end

      describe 'odd characters' do
        let(:string) { 'civic' }

        it 'returns the string' do
          expect(subject).to eq(string)
        end
      end

      describe 'has a space' do
        let(:string) { 'race car' }

        it 'returns the string' do
          expect(subject).to eq(string)
        end
      end

      describe 'is a subsequence' do
        let(:string) { 'BBABCBCABZ' }

        it 'returns one of the longest' do
          expect(subject).to eq('BACBCAB')
        end
      end
    end

    context 'technically not a palindrome' do
       describe 'empty string' do
        let(:string) { '' }

        it 'returns empty' do
          expect(subject).to eq(string)
        end
      end

      describe 'one character' do
        let(:string) { 'A' }

        it 'returns character' do
          expect(subject).to eq(string)
        end
      end

     describe 'more than one character string' do
        let(:string) { 'monkey' }

        it 'returns empty string' do
          expect(subject).to eq('y')
        end
      end
    end
  end
end

RSpec.describe Tuple do

end

