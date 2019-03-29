require_relative '../Tasks/floatingPoint.rb'

RSpec.describe '#interp' do
  it 'Basic tests x -> x' do
    expec1 = [0.0, 2.25, 4.5, 6.75]
    expec2 = [0.0, 2.25, 4.5, 6.75]
    func1 = interp(->(x) { x }, 0, 9.0, 4)
    func2 = interp(->(x) { x }, 0, 9.0, 4)
    expect(func1).to eq(expec1)
    expect(func2).to eq(expec2)
  end

  it 'Basic tests x -> sin(x)' do
    expec1 = [0.0, -0.45, 0.79, -0.99, 0.96]
    expec2 = [0.0, 0.86, -0.88, 0.01, 0.85, -0.88, 0.03, 0.84, -0.89, 0.05]
    func1 = interp(->(x) { Math.sin(x) }, 0, 18.0, 5)
    func2 = interp(->(x) { Math.sin(x) }, 0, 21.0, 10)
    expect(expec1).to eq(func1)
    expect(expec2).to eq(func2)
  end

  it 'Basic tests x -> cos(x)' do
    expec1 = [1.0, -0.99, 0.96, -0.92, 0.84, -0.76, 0.66]
    expec2 = [1.0, 0.34]
    func1 = interp(->(x) { Math.cos(x) }, 0, 21.0, 7)
    func2 = interp(->(x) { Math.cos(x) }, 0, 15.0, 2)
    expect(expec1).to eq(func1)
    expect(expec2).to eq(func2)
  end
end
