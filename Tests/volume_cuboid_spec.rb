require_relative '../Tasks/volume_of_a_cuboid'

RSpec.describe 'get_volume_of_cuboid' do
  context 'when testing the method get_volume_of_cuboid' do
    it 'calculates the volume of cuboid' do
      volume = get_volume_of_cuboid(1, 2, 3)
      expect(volume).to eq 6
    end
  end
end
