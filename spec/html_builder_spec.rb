require 'html_builder'

describe HTMLBuilder do

  describe '#array_to_list' do
    it 'should generate ordered list html from array' do
      test_array = ['test1', 'test2', 'test3']
      expected_output = '<ol><li>test1</li><li>test2</li><li>test3</li></ol>'
      expect(HTMLBuilder.array_to_list(test_array)).to eq expected_output
    end
  end
  describe '#array_to_drop_down' do
    it 'should generate dropdown list option html from array' do
      test_array = [{ value: 'object1', visible_name: 'player1' }, { value: 'object2', visible_name: 'player2' }]
      expected_output = "<option value='object1'>player1</option><option value='object2'>player2</option>"
      expect(HTMLBuilder.array_to_drop_down(test_array)).to eq expected_output
    end
  end
end
