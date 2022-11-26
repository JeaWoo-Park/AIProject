#ifndef GOAL_BAIT_H
#define GOAL_BAIT_H
#pragma warning (disable:4786)
//-----------------------------------------------------------------------------
//
//  Name:   Goal_Bait.h
//
//  Author: Mat Buckland (ai-junkie.com)
//
//  Desc:   
//
//-----------------------------------------------------------------------------
#include "Goals/Goal_Composite.h"
#include "Raven_Goal_Types.h"
#include "../Raven_Bot.h"


class Goal_Bait : public Goal_Composite<Raven_Bot>
{
public:

	Goal_Bait(Raven_Bot* pOwner) :Goal_Composite<Raven_Bot>(pOwner, goal_attack_target)
	{}

	void Activate();

	int  Process();

	void Terminate() { m_iStatus = completed; }

};







#endif
