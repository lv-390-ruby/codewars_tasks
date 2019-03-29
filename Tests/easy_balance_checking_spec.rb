require_relative '../Tasks/easy_balance_checking'

def testing(s, exp)
  print('testing : ', s, "\n")
  actual = balance(s)
  expect(actual).to eq(exp)
end

$b1 = "1000.00!=

125 Market !=:125.45
126 Hardware =34.95
127 Video! 7.45
128 Book :14.32
129 Gasoline ::16.10
"
$b1sol = "Original Balance: 1000.00\r\n125 Market 125.45 Balance 874.55\r\n126 Hardware 34.95 Balance 839.60\r\n127 Video 7.45 Balance 832.15\r\n128 Book 14.32 Balance 817.83\r\n129 Gasoline 16.10 Balance 801.73\r\nTotal expense  198.27\r\nAverage expense  39.65"

$b2 = "1233.00
125 Hardware;! 24.8?;
123 Flowers 93.5
127 Meat 120.90
120 Picture 34.00
124 Gasoline 11.00
123 Photos;! 71.4?;
122 Picture 93.5
132 Tyres;! 19.00,?;
129 Stamps 13.6
129 Fruits{} 17.6
129 Market;! 128.00?;
121 Gasoline;! 13.6?;"

$b2sol = "Original Balance: 1233.00\r\n125 Hardware 24.80 Balance 1208.20\r\n123 Flowers 93.50 Balance 1114.70\r\n127 Meat 120.90 Balance 993.80\r\n120 Picture 34.00 Balance 959.80\r\n124 Gasoline 11.00 Balance 948.80\r\n123 Photos 71.40 Balance 877.40\r\n122 Picture 93.50 Balance 783.90\r\n132 Tyres 19.00 Balance 764.90\r\n129 Stamps 13.60 Balance 751.30\r\n129 Fruits 17.60 Balance 733.70\r\n129 Market 128.00 Balance 605.70\r\n121 Gasoline 13.60 Balance 592.10\r\nTotal expense  640.90\r\nAverage expense  53.41"

describe 'balance' do
  context 'basic tests' do
    it 'returned right value case 1' do
      testing($b1, $b1sol)
    end
    it 'returned right value case 2' do
      testing($b2, $b2sol)
    end
    it 'should not raise any errors' do
      expect { balance($b1) }.not_to raise_error
    end
  end
end

$ctgr = %w[Market Hardware Video Books Music Gasoline Beauty Perfume Pen Grocery Stamps Photos Picture Vegetables Flowers Fruits Hairdresser Meat Car Tyres]
$prices = %w[120.3 13.1 17.6 93.5 3.2 71.4 12.2 120.90 34.00 13.6 11.00 12.00 110.7 24.8 54.00 17.5 128.00 17.00 19.00 20.00]
$chks = %w[001 002 003 120 121 122 123 124 125 126 127 128 129 130 131 131 132 129 139 160]

def compose56(k)
  i = 0; r = Random.new; b = r.rand(800..2000).to_f.to_s; res = b + "\n";
  while (i < k) do
    n = $ctgr.shuffle
    a = $prices.shuffle
    t = $chks.shuffle
    q = 0
    while (q < 3) do
      rn = r.rand(0..20)
      if (rn % 2 == 0) then rs1 = ";!"; rs2= "?;"; else rs1 = ""; rs2= ""; end
      res += t[q] + " " + n[q] + rs1 + " " + a[q] + rs2 + "\n"
      q += 1
    end
    i += 1
  end
  res
end

def balance56(b)
  b = b.gsub(/[^0-9a-z\\\s+A-Z\\\.]/, "")
  arr = b.split("\n")
  bal = arr[0].to_f
  narr= []
  arr[1...arr.length].each { |x|
    if (x.length != 0) then
      y = x.split(" ")
      narr << [y[2], x]
    end
  }
  i = 0; total = 0; res = sprintf("Original Balance: %.2f\r\n", bal)
  while (i < narr.length) do
    v = narr[i][0]
    bal -= v.to_f
    total += v.to_f
    s = narr[i][1].split(" ")
    r = sprintf("%s %s %.2f %s %.2f\r\n", s[0], s[1], s[2], "Balance", bal)
    res += r
    i += 1
  end
  res += sprintf("%s %.2f\r\n", "Total expense ", total)
  avg = total / narr.length.to_f
  res += sprintf("%s %.2f", "Average expense ", avg)
  res
end

describe 'RandomTest' do
  it 'balance' do
    r = Random.new
    i = 0
    while i < 100
      s = compose56(2)
      sol = balance56(s)
      testing(s, sol)
      i += 1
    end
  end
end
