using System;
using System.Collections.Generic;
using System.Linq;

namespace ConsoleApp1
{
    public interface IReptile
    {
        ReptileEgg Lay();
    }

    public class FireDragon: IReptile
    {
        public FireDragon()
        {
            Console.WriteLine("A FireDragon.");

        }

        public ReptileEgg Lay()
        {
            return new ReptileEgg(new Func<FireDragon>(() => new FireDragon()));
        }
    }

public class ReptileEgg
{
    bool born = false;
    Func<IReptile> create;

    public ReptileEgg(Func<IReptile> createReptile)
    {
        create = createReptile;
    }

    public IReptile Hatch()
    {
        if (!born)
        {
            Console.WriteLine("It's Alive!");
            born = true;
            return create();
        }
        throw new System.InvalidOperationException();
    }
}

    public class Bicycle
    {
        private int wheelCount = 2;
        private string owner;

        public Bicycle(string owner)
        {
            this.owner = owner;
        }

    }

    internal class Program
    {
        static void Main(string[] args)
        {
            // var fireDragon = new FireDragon();
            // var egg = fireDragon.Lay();
            // var childFireDragon = egg.Hatch();

            var firedragon = new FireDragon();
            var egg = firedragon.Lay();
            var childFireDragon = egg.Hatch();
            var children2 = egg.Hatch();
            var firedragon2 = new FireDragon();
            var egg2 = firedragon2.Lay();
            var childFiredragon2 = egg2.Hatch();


            //var chicken1 = new FireDragon();
            //var egg = chicken1.Lay();

            Console.WriteLine(MinimalNumberOfPackages(16, 2, 10));
            //// Should print "flo", "fle", and "fla" since those are the distinct, length 3 prefixes.
            foreach (var p in AllPrefixes(3, new string[] { "flow", "flowers", "flew", "flag", "fm" }))
                Console.WriteLine(p);
            Console.ReadLine();
        }

        public static IEnumerable<string> AllPrefixes(int prefixLength, IEnumerable<string> words)
        {
            //var query = from w in words
            //            where w.Length == prefixLength + 1
            //            select w.Substring(0,prefixLength);

            var query2 = words.Where(w => w.Length >= prefixLength).Select(o => o.Substring(0, prefixLength)).Distinct();

            return query2;
        }

        public static int MinimalNumberOfPackages(int items, int availableLargePackages, int availableSmallPackages)
        {
            //El paquete puede contener cinco artículos, mientras que el paquete pequeño solo puede contener un artículo.
            //el número disponible de paquetes grandes y pequeños es limitado. todos los artículos deben colocarse en paquetes y
            //los paquetes usados ​​deben llenarse por completo.
            //escriba una función que calcule la cantidad mínima de paquetes necesarios para envejecer una cantidad determinada de artículos.
            //si no es posible cumplir con los requisitos, devuelve -1.
            //Por ejemplo, si tenemos 12 artículos, 2 paquetes grandes y 10 pequeños, la función debería
            //devolver 8(2 paquetes grandes + 6 pequeños)

            int largeBox = items / 5;
            int result = -1;

            if (largeBox <= availableLargePackages && items % 5 <= availableSmallPackages)
            {
                result = largeBox + (items % 5);
            }
            else
            {
                int diff = largeBox - availableLargePackages;

                if ((diff * 5) <= availableSmallPackages)
                {
                    result = availableLargePackages + (diff * 5) + (items % 5);
                }
            }

            return result;
        }
    }

    public class GearBox
    {
        private int gear;
        internal bool IsReverseGear { get { return gear < 0; } }
        protected void ChangeGear(int gear)
        {
            this.gear = gear;
        }
    }

    public class B : GearBox
    {
        public int ggear;
    }




}
