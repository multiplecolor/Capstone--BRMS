interface Atm{
    withDraw(amount:number):void
    depoSit(amount:number):void
}
class Sbi implements Atm{
    constructor(withdraw:number,deposit:number){
        this.withdraw=withdraw
        this.deposit=deposit
    }
withdraw(amount:number){
console.log(withdraw your amount)
    
}
deposit(amount:number)
{
    console.log(deposit amount)
}
