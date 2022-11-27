#include "BaitGoal_Evaluator.h"
#include "../Raven_ObjectEnumerations.h"
#include "misc/Stream_Utility_Functions.h"
#include "../Raven_Game.h"
#include "../Raven_Map.h"
#include "Goal_Think.h"
#include "Raven_Goal_Types.h"
#include "Raven_Feature.h"

#include <string>

// 2018180020 ¹ÚÀç¿ì


//------------------- CalculateDesirability ---------------------------------
//-----------------------------------------------------------------------------
double GetBAIT_Evaluator::CalculateDesirability(Raven_Bot* pBot)
{
    double Railgun = Raven_Feature::IndividualWeaponStrength(pBot, type_rail_gun);

    const double Tweaker = 1.0;

    double Health;

    Health = Raven_Feature::Health(pBot);

    double Desirability = (Tweaker * Health * Railgun*1.2 ) ;
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
 
    gdi->TextAtPos(Position, "B:" + ttos(CalculateDesirability(pBot), 2));
}