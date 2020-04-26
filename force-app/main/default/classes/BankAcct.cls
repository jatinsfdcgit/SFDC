public class BankAcct {
private integer balance = 0;
public string acctname;
public string accttype;
public void makeDeposit(Integer deposit) {
balance = balance + deposit ;
}
public integer getBalance() {
return balance ;
}
}