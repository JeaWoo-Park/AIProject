#include "Goal_Bait.h"
#include "Goal_SeekToPosition.h"
#include "Goal_HuntTarget.h"
#include "Goal_DodgeSideToSide.h"
#include "../Raven_ObjectEnumerations.h"
#include "../Raven_Bot.h"

// 2018180020 ¹ÚÀç¿ì




//------------------------------- Activate ------------------------------------
//-----------------------------------------------------------------------------
void Goal_Bait::Activate()
{
    m_iStatus = active;


    RemoveAllSubgoals();

    if (!m_pOwner->GetTargetSys()->isTargetPresent())
    {
        m_iStatus = completed;

        return;
    }



    if (m_pOwner->GetTargetSys()->isTargetShootable())
    {
        AddSubgoal(new Goal_SeekToPosition(m_pOwner, m_pOwner->GetTargetBot()->Pos()));
    }


}

//-------------------------- Process ------------------------------------------
//-----------------------------------------------------------------------------
int Goal_Bait::Process()
{
    ActivateIfInactive();

    m_iStatus = ProcessSubgoals();

    m_pOwner->ChangeWeapon(type_rail_gun);

    ReactivateIfFailed();

    return m_iStatus;
}




