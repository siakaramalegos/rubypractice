# Write a program that does the following:
# 1. Lists several items.
# 2. Allows a user to select an item and view the inventory count, change the number
#    of the inventory, delete the item altogether, or even change the name.
# 3. Create a new item and give the item an inventory count,. Have this item now show
#    up in the list of items you can select.
# 4. Loops through until the user does not want to edit the list anymore.

class Inventory
  #attr_accessor :item, :count, :inventory

  def initialize
    puts "Welcome to the Inventory App!"
    initial_items
  end

  def initial_items
    puts "How many item categories do you have to enter in inventory?"
    item_count = gets.chomp.to_i
    @inventory = Hash.new
    for n in 1..item_count
      puts "What is the name of item category number #{n}?"
      @item = gets.chomp.to_s
      puts "How many #{@item} are in inventory?"
      @count = gets.chomp.to_i
      @inventory[@item] = @count
    end
    full_inventory
  end

  def do_next
    puts "----------------------\nWhat would you like to do next (type in only the number)?"
    puts " (1) Retrieve a count"
    puts " (2) Change a count"
    puts " (3) Delete an item category"
    puts " (4) Change an item category's name"
    puts " (5) See my full inventory"
    puts " (6) Exit program\n----------------------"
    action = gets.chomp.to_s

    get_count if action == '1'
    change_count if action == '2'
    delete_item if action == '3'
    change_item_name if action == '4'
    full_inventory if action == '5'
    exit_program if action == '6'
  end

  def get_count
    puts "For which item do you want to look up count?"
    @item = gets.chomp.to_s
    puts "#{@item} has #{@inventory[@item]} in inventory."
    do_next
  end

  def change_count
    puts "For which item do you want to change count?"
    @item = gets.chomp.to_s
    puts "What's the new count for #{@item}?"
    @count = gets.chomp.to_i
    @inventory[@item] = @count
    full_inventory
  end

  def delete_item
    puts "Which item do you want to delete?"
    @item = gets.chomp.to_s
    @inventory.delete(@item)
    full_inventory
  end

  def change_item_name
    puts "Which item needs a new name?"
    @item = gets.chomp.to_s
    puts "What is the new name?"
    new_name = gets.chomp.to_s
    @inventory[new_name] = @inventory[@item]
    @inventory.delete(@item)
    full_inventory
  end

  def full_inventory
    puts "Your inventory is:\n #{@inventory}"
    do_next
  end

  def exit_program
    puts "Goodbye!"
  end

end

barn = Inventory.new
