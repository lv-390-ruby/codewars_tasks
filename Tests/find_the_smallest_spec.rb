require_relative '../app/find_the_smallest'

def testing_cases(i, ans)
  expect(smallest(i)).to eq(ans)
end

describe('smallest') do
  context 'Basis tests' do
    it('Basic tests, case 1 ') do
      testing_cases(261_235, [126_235, 2, 0])
    end
    it('Basic tests, case 2') do
      testing_cases(209_917, [29_917, 0, 1])
    end
    it('Basic tests, case 3') do
      testing_cases(285_365, [238_565, 3, 1])
    end
    it('Basic tests, case 4') do
      testing_cases(935_855_753, [358_557_539, 0, 8])
    end
    it('Basic tests, case 4') do
      testing_cases(256_687_587_015, [25_668_758_715, 9, 0])
    end
    it('Basic tests, case 4') do
      testing_cases(94_883_608_842, [9_488_368_842, 6, 0])
    end
    it('Basic tests, case 4') do
      testing_cases(94_883_608_842, [9_488_368_842, 6, 0])
    end
    it('Basic tests, case 4') do
      testing_cases(199_819_884_756, [119_989_884_756, 4, 0])
    end
    it 'should not raise any errors' do
      expect { smallest(199_819_811_111_111_111_111_111_111_111_111_756) }.not_to raise_error
    end
  end
end
