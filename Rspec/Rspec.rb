https://github.com/eliotsykes/rspec-rails-examples

include_examples "name"      # include the examples in the current context
it_behaves_like "name"       # include the examples in a nested context
it_should_behave_like "name" # include the examples in a nested context
matching metadata            # include the examples in the current context
<!--
Rspec is a Behavior-Drivent Development tool for Ruby programers.
"Describe an order."
"It sums the prices of its line items."
 -->

<!--
 descible: Miêu tả chung cho một nhóm các test
  -->
describe 'test tong' do
  it '5 + 5 bang 10' do
    expect(5 + 5).to eq 10
  end
  it '5 + 6 khac 10' do
    expect(5 + 6).to_not eq 10
end

<!--
 context: dùng để miêu tả cho một nhóm các test case  nhưng dùng để phân
nhánh teste case theo  từng trường hợp
-->
describe "validates" do
  context "create í valid" do
    it {is_expected.to be_valid}
  end
end

<!--
- it: Dùng để mô tả test case
-->
it {is_expected.to be_valid}

<!--
- before: dùng để nhóm các thao tác chung như tạo dữ liệu
- let: dùng để khởi tạo object
-->
let(:category) {FactoryGirl.create :category}

<!--
- subject : xác định đối tượng object trong test key
-->
let(:category) {FactoryGirl.create :category}

subject {category}
context "when name is too long" do
  before {subject.name = Faker::Lorem.characters(55)}
  it {is_expected.not_to be_valid}
end

<!--
So sánh
-->
eq là phép so sánh bằng.
be_* là đặc trưng cho các matcher được kết thúc bằng ?. vs: be_empty, be_valid, ...
be_truthy / be_falsey trả về giá trị true or false
raise_errorcó thể kiểm tra được cả những lỗi phát sinh
include kiểm tra xem 1 phần tử có nằm trong 1 mảng hay không
be_within(Y).of(X) :giá trị trả về
nằm trong khoảng X-Y đến X+Y


Rspec.describe Order do
  it "sum the prices of its line items" do]
    order = Order.new

    order.add_entry(LineItem.new(:item => Item.new(
      :price => Money.new(1.11, :USD)
    )))
    order.add_entry(LineItem.new(:item => Item.new(
      :price => Money.new(2.22, :USD),
      :quantity => 2
    )))

    expect(order.total).to eq(Money.new(5.55, :USD))
  end
end

# Nested Groups
Rspec.describe Order do
  context "with no items" do
    it "behaves one way" do

    end
  end

  context "with one item" do
    it "behaves another way" do

    end
  end
end

# Shared Examples and Contexts
RSpec.shared_examples "collections" do |collection_class|
  it "is empty when first created" do
    expect(collection_class.new).to be_empty
  end
end

RSpec.describe Array do
  include_examples "collections", Array
end

RSpec.describe Hash do
  include_examples "collections", Hash
end

# Metadata
it "does something" do |example|
  expect(example.metadata[:description]).to eq("does something")
end

# described_class
RSpec.describe Widget do
  example do
    expect(described_class).to equal(Widget)
  end
end

# A Word on Scope
RSpec.describe "Using an array as a stack" do
  def build_stack
    []
  end

  before(:example) do
    @stack = build_stack
  end

  it "is initially empty" do
    expect(@stack).to be_empty
  end

  context "after an item has been pushed" do
    before(:example) do
      @stack.push :item
    end

    it "allows the pushed item to be popped" do
      expect(@stack.pop).to eq(:item)
    end
  end
end
