#include "BaitGoal_Evaluator.h"
#include "../Raven_ObjectEnumerations.h"
#include "misc/Stream_Utility_Functions.h"
#include "../Raven_Game.h"
#include "../Raven_Map.h"
#include "Goal_Think.h"
#include "Raven_Goal_Types.h"
#include "Raven_Feature.h"

#include <string>




//------------------- CalculateDesirability ---------------------------------
//-----------------------------------------------------------------------------
double GetBAIT_Evaluator::CalculateDesirability(Raven_Bot* pBot)
{
    //grab the distance to the closest instance of the weapon type
    double Railgun = Raven_Feature::IndividualWeaponStrength(pBot, type_rail_gun);

  
    //value used to tweak the desirability
    const double Tweaker = 0.15;

    double Health, WeaponStrength;

    Health = Raven_Feature::Health(pBot);

    double Desirability = (Tweaker * (1 - Health) * Railgun*10000 ) ;
    Desirability *= m_dCharacterBias;
    return Desirability;
}



//------------------------------ SetGoal --------------------------------------
void GetBAIT_Evaluator::SetGoal(Raven_Bot* pBot)
{
    pBot->GetBrain()->AddGoal_Bait();
}

//-------------------------- RenderInfo ---------------------------------------
//-----------------------------------------------------------------------------
void GetBAIT_Evaluator::RenderInfo(Vector2D Position, Raven_Bot* pBot)
{
 
    gdi->TextAtPos(Position, "Bait : " + ttos(CalculateDesirability(pBot), 2));
}