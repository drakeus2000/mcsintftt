using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class mainmenu_buttons : MonoBehaviour {
    public GameObject post_ending_canvas, mainmenu_canvas, play_continue_canvas;
    public string nije_presao_igru;
    public string presao_igru_ali_ne_submit;
    public string nagrada;
    string sent_results;
    string game_complete;
    string text_so_far;
    string culture;
    string name_p;
    string gender_p;

    public Button Startbutton;
    public Button submitbutton;


    
    string gender;
    int[] q;
    int no_deaths;

    int g;

    // Use this for initialization
    private void Awake()
    {
        q = new int[25];
    }
    void Start () {
        culture = PlayerPrefs.GetString("culture");
        name_p = PlayerPrefs.GetString("name");
        gender_p = PlayerPrefs.GetString("gender");
        if (gender_p == "her") gender = "girl";
        else gender = "boy";
        sent_results = PlayerPrefs.GetString("sent_results");
        game_complete = PlayerPrefs.GetString("game_complete_not_submited");
    }

    public void Play_Continue_button ()
    {
        Application.LoadLevel("Demo");
    }

    public void post_ending()
    {
      /*    this.gameObject.AddComponent<AudioSource>();
            this.GetComponent<AudioSource>().clip = myclip;
            this.GetComponent<AudioSource>().Play(); */
            hidemainmenu();
            post_ending_canvas.SetActive(true);
            if (game_complete != "true")
            post_ending_canvas.GetComponentInChildren<Text>().text = nije_presao_igru;
            if ((game_complete == "true") && (sent_results != "true"))
            post_ending_canvas.GetComponentInChildren<Text>().text = presao_igru_ali_ne_submit;
            if ((game_complete == "true") && (sent_results == "true"))
            Application.LoadLevel("potato");



    }
    public void reset_game() {
        PlayerPrefs.DeleteAll(); // obrisi me kada radis pravu verziju ovo je za Paola da proba
    }
    public void play_continue()
    {
        hidemainmenu();
        play_continue_canvas.SetActive(true);

        for (int i = 1; i < 25; i++)
        {
            if (PlayerPrefs.GetInt("temp" + i) == 0) break;
            q[i] = PlayerPrefs.GetInt("temp" + i);



            if ((i==1) && (PlayerPrefs.HasKey("temp" + i)))
            {
                text_so_far = "Once upon a time in a " + realm();
            }
            if ((i == 2) && (PlayerPrefs.HasKey("temp" + i)))
            {
                text_so_far = text_so_far + " lived a "+ gender + " by the name of " + name_p + " who dreamed of " + objective_p()+". ";
            }
            if ((i == 3) && (PlayerPrefs.HasKey("temp" + i)) && (!PlayerPrefs.HasKey("temp" + (i+1))))
            {
                text_so_far = text_so_far + lived_in_house();
            }
            if ((i == 5) && (PlayerPrefs.HasKey("temp" + i)))
            {
                text_so_far = text_so_far+ "\r\n"+ "One day " + name_p + " headed on to the city to sell some wool. ";
            }
            if ((i == 6) && (PlayerPrefs.HasKey("temp" + i)))
            {
                text_so_far = text_so_far + "Upon finishing, the "+gender+ " headed back, but ran into an evil dwarf called "+ dwarf();
            }
            if ((i == 7) && (PlayerPrefs.HasKey("temp" + i)))
            {
                text_so_far = text_so_far + " who sent the hero in a cursed castle ";
            }
            if ((i == 8) && (PlayerPrefs.HasKey("temp" + i)))
            {
                text_so_far = text_so_far + "where a dark force was released and kidnapped hero's village " + and_the_love() + ".";
            }
            if ((i == 9) && (PlayerPrefs.HasKey("temp" + i)))
            {
                text_so_far = text_so_far + "Dark force turned out to be " + who_is_badguy();
            }
            if ((i == 13) && (PlayerPrefs.HasKey("temp" + i)))
            {
                text_so_far = text_so_far + "\r\n"+ "On the way hero decided to " + helper();
            }
            if ((i == 14) && (PlayerPrefs.HasKey("temp" + i)) && (q[13]>2))
            {
                text_so_far = text_so_far + " who took him to see "+ evil_helper();
            }
            if ((i == 15) && (PlayerPrefs.HasKey("temp" + i)))
            {
                text_so_far = text_so_far + " who sent him to a magical kingdom far away plagued by " + who_is_badguy() + "'s evil lieutenant";
            }
            if ((i == 17) && (PlayerPrefs.HasKey("temp" + i)))
            {
                text_so_far = text_so_far + " There, hero saved a " + magic_animal();
            }
            if ((i == 19) && (PlayerPrefs.HasKey("temp" + i)))
            {
                text_so_far = text_so_far + " And slay the evil lieutenant. ";
            }
            if ((i == 20) && (PlayerPrefs.HasKey("temp" + i)))
            {
                text_so_far = text_so_far + " For this hero got a magic sword to kill the "+who_is_badguy();
            }
            if ((i == 21) && (PlayerPrefs.HasKey("temp" + i)))
            {
                text_so_far = text_so_far + " Along the way hero learnt to use the sword ";
            }
            if ((i == 22) && (PlayerPrefs.HasKey("temp" + i)))
            {
                text_so_far = text_so_far + "and killed the "+ who_is_badguy()+" and lived happily ever after";
            }
            if ((i == 24) && (PlayerPrefs.HasKey("temp" + i)))
            {
                text_so_far = text_so_far + "\r\n" + "\r\n" + "Or so would have once results were submitted";
                Startbutton.interactable = false;
                submitbutton.interactable = true;

            }
        }
        play_continue_canvas.GetComponentInChildren<Text>().text = text_so_far;
    }
    
    public string evil_helper()
    {
        if (culture == "slovene") return "Jaga Baba";
        if (culture == "austrian") return "Roggenmuhme";
        if (culture == "slovakian") return "Ježibaba";
        return "witch";
    }
    public string dwarf()
    {
        if (culture == "slovene") return "zlatna ptička";
        if (culture == "austrian") return "wolpertinger";
        if (culture == "slovakian") return "tatoš";
        return "animal";
    }
    public string magic_animal()
    {
        if (culture == "slovene") return "Špicparkeljc";
        if (culture == "austrian") return "Kruzimügeli";
        if (culture == "slovakian") return "Maptinko Klingač";
        return "dwarf";
    }

    public string helper()
    {
        if ((q[13] == 1) && (culture == "austrian")) return "go ask the Gods for help";
        if ((q[13] == 2) && (culture == "austrian")) return "go ask the Gods for help";
        if ((q[13] == 3) && (culture == "austrian")) return "help Roggenwölfe, the spirit of the corn";
        if ((q[13] == 4) && (culture == "austrian")) return "help Roggenwölfe, the spirit of the corn";
        if ((q[13] == 5) && (culture == "austrian")) return "help Roggenwölfe, the spirit of the corn";
        if ((q[13] == 1) && (culture == "slovenian")) return "go ask ancient Anti";
        if ((q[13] == 2) && (culture == "slovenian")) return "go ask ancient Anti";
        if ((q[13] == 3) && (culture == "slovenian")) return "help Lisica Zvitorepka";
        if ((q[13] == 4) && (culture == "slovenian")) return "help Lisica Zvitorepka";
        if ((q[13] == 5) && (culture == "slovenian")) return "help Lisica Zvitorepka";
        if ((q[13] == 1) && (culture == "slovakian")) return "go ask 12 old men";
        if ((q[13] == 2) && (culture == "slovakian")) return "go ask 12 old men";
        if ((q[13] == 3) && (culture == "slovakian")) return "help líška";
        if ((q[13] == 4) && (culture == "slovakian")) return "help líška";
        if ((q[13] == 5) && (culture == "slovakian")) return "help líška";
        return "invalid";
    }

    public string who_is_badguy()
    {
        if ((q[9] == 1) && (culture == "austrian")) return "Black Dragon";
        if ((q[9] == 2) && (culture == "austrian")) return "Black Dragon";
        if ((q[9] == 3) && (culture == "austrian")) return "Iron King of the Dwarves";
        if ((q[9] == 4) && (culture == "austrian")) return "Iron King of the Dwarves";
        if ((q[9] == 5) && (culture == "austrian")) return "Iron King of the Dwarves";
        if ((q[9] == 1) && (culture == "slovenian")) return "Zmaj with 7 heads";
        if ((q[9] == 2) && (culture == "slovenian")) return "Zmaj with 7 heads";
        if ((q[9] == 3) && (culture == "slovenian")) return "Vedomec the sorcerer";
        if ((q[9] == 4) && (culture == "slovenian")) return "Vedomec the sorcerer";
        if ((q[9] == 5) && (culture == "slovenian")) return "Vedomec the sorcerer";
        if ((q[9] == 1) && (culture == "slovakian")) return "Drak with 7 heads";
        if ((q[9] == 2) && (culture == "slovakian")) return "Drak with 7 heads";
        if ((q[9] == 3) && (culture == "slovakian")) return "Veterný kráľ";
        if ((q[9] == 4) && (culture == "slovakian")) return "Veterný kráľ";
        if ((q[9] == 5) && (culture == "slovakian")) return "Veterný kráľ";
        return "";
    }
    public string realm()
    {
               if (q[1] == 1) return "empire";
               if (q[1] == 2) return "kingdom";
               if (q[1] == 3) return "dukedom";
               if (q[1] == 4) return "realm";
               if (q[1] == 5) return "barony";
               return "realm"; 

 
    }


    public string objective_p()
    {
        if (q[2] == 1) return "becoming a ruler";
        if (q[2] == 2) return "becoming a ruler";
        if (q[2] == 3) return "becoming a ruler";
        if (q[2] == 4) return "finding love";
        if (q[2] == 5) return "finding love";
        return "not defined";
    }

    public string lived_in_house()
    {
        if (q[3] == 1) return "small villa";
        if (q[3] == 2) return " A well off house";
        if (q[3] == 3) return "A house like any other";
        if (q[3] == 4) return " A small, yet sturdy hut";
        if (q[3] == 5) return "A wooden hut in the meadows";
        return "realm";
    }

    public string and_the_love()
    {
        if (q[2] == 4) return "and hero's love";
        if (q[2] == 5) return "and hero's love";
        return "";
    }

    void hidemainmenu()
    {

        mainmenu_canvas.SetActive(false);
    }

    public void BringBack_mainmenu()
    {
        post_ending_canvas.SetActive(false);
        play_continue_canvas.SetActive(false);
        mainmenu_canvas.SetActive(true);
        

    }

    public void QuitGame()
    {
        Application.Quit();
    }

    // Update is called once per frame
    void Update () {
    }
}
