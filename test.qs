namespace HostPython {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;


    operation InvioOO(): String{

        //crea una coppia di qubit, entrambi nello stato |0>
        use (q1, q2) = (Qubit(), Qubit());   
        
        //per realizzare due qubit entangled si può procedere come segue:
        //si mette in superposition bilanciata il controller e si applica il CNOT
        //lo stato finale è quello di Bell
        H(q1);            
        CNOT(q1, q2);


        //Alice applica operatore I
        I(q1);
        
        //Bob applica operatore CNOT
        CNOT(q1, q2);

        //Bob applica operatore H
        H(q1);
        

        let b1 = M(q1);
        let b2 = M(q2);

        mutable result = ""; 
        if(b1==Zero && b2==Zero){
            set result="00";
        }
        return result;
    }

    operation InvioOI(): String{

        //crea una coppia di qubit, entrambi nello stato |0>
        use (q1, q2) = (Qubit(), Qubit());   
        
        //per realizzare due qubit entangled si può procedere come segue:
        //si mette in superposition bilanciata il controller e si applica il CNOT
        //lo stato finale è quello di Bell
        H(q1);            
        CNOT(q1, q2);


        //Alice applica operatore I
        X(q1);
        
        //Bob applica operatore CNOT
        CNOT(q1, q2);

        //Bob applica operatore H
        H(q1);
        

        let b1 = M(q1);
        let b2 = M(q2);

        mutable result = ""; 
        if(b1==Zero && b2==One){
            set result="01";
        }
        return result;
    }

    operation InvioIO(): String{

        //crea una coppia di qubit, entrambi nello stato |0>
        use (q1, q2) = (Qubit(), Qubit());   
        
        //per realizzare due qubit entangled si può procedere come segue:
        //si mette in superposition bilanciata il controller e si applica il CNOT
        //lo stato finale è quello di Bell
        H(q1);            
        CNOT(q1, q2);


        //Alice applica operatore I
        Z(q1);
        
        //Bob applica operatore CNOT
        CNOT(q1, q2);

        //Bob applica operatore H
        H(q1);
        

        let b1 = M(q1);
        let b2 = M(q2);

        mutable result = ""; 
        if(b1==One && b2==Zero){
            set result="10";
        }
        return result;
    }

    operation InvioII(): String{

        //crea una coppia di qubit, entrambi nello stato |0>
        use (q1, q2) = (Qubit(), Qubit());   
        
        //per realizzare due qubit entangled si può procedere come segue:
        //si mette in superposition bilanciata il controller e si applica il CNOT
        //lo stato finale è quello di Bell
        H(q1);            
        CNOT(q1, q2);


        //Alice applica operatore I
        Y(q1);
        
        //Bob applica operatore CNOT
        CNOT(q1, q2);

        //Bob applica operatore H
        H(q1);
        

        let b1 = M(q1);
        let b2 = M(q2);

        mutable result = ""; 
        if(b1==One && b2==One){
            set result="11";
        }
        return result;
    }
}