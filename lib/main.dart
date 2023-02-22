// HOME TASK
void main() {
  List<int> list = [1,2,3,4,5,5];
  print(groupSum(0, [5,6,2], 8));
  print(groupSum6(0, [5,6,2], 8));
  // print(groupSum5(2, [2,5,10,4], 12));


}
// Classes Home Task
abstract class Monster {
  late String name;

  String attack();
}

class FireMonster implements Monster {
  @override
  late String name;
  @override
  String attack() {
    return name;
  }
}

class WaterMonster implements Monster {
  @override
  late String name;
  @override
  String attack() {
    return name;
  }
}

class StoneMonster implements Monster {
  @override
  late String name;
  @override
  String attack() {
    return name;
  }
}

// Task -  2
abstract class Payable {
  double getPaymentAmount();
}

class Employee extends Payable {
  late String firstName;
  late String lastName;

  int socialSecurityNumber() {
    return 0;
  }

  @override
  double getPaymentAmount() {
    return 1.0;
  }
}

class Invoice extends Payable {
  late String partNumber;
  late String partDescription;
  late int quantity;
  late double pricePeritem;

  @override
  double getPaymentAmount() {
    return 2.1;
  }
}

class CommissionEmployee extends Employee {
  late double grossSales;
  late double commissionRate;
}

class HourlyEmployee extends Employee {
  late double wage;
  late double hours;
}

class SalariedEmployee extends Employee {
  late double weeklySalary;
}

class BasePlusCommissionEmployee extends CommissionEmployee {
  late double baseSalary;
}

// Coding bat Rekursiya-2
// task - 1 -groupSum
bool groupSum(int start, List<int> nums, int target) {
  if (start >= nums.length) {
    return target == 0;
  }
  return groupSum(start + 1, nums, target - nums[start]) || groupSum(start + 1, nums, target);
}


// task - 2 - groupSum6
bool groupSum6(int start, List<int> nums, int target) {
  if (start >= nums.length) {
    return (target == 0);
  }
  if (groupSum6(start+1, nums, target - nums[start])) return true;
  if (nums[start] != 6 && groupSum6(start+1, nums, target)) return true;
  return false;

}

// Task - 3 - groupSum5
// bool groupSum5(int start, List<int> nums, int target) {
//   if(start >= nums.length)
//     return target == 0;
//
//   if(nums[start] % 5 == 0) {
//     if(start <= nums.length - 2 && nums[start+1] == 1)
//       return groupSum5(start+2, nums, target - nums[start]);
//
//     return groupSum5(start+1, nums, target - nums[start]);
//   }
//
//   if(groupSum5(start+1, nums, target - nums[start]))
//     return true;
//
//   if(groupSum5(start+1, nums, target))
//     return true;
//
//   return false;
// }

