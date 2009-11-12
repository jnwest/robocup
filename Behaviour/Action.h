/*! @file Action.h
    @brief Declaration of Action class.

    @author Jason Kulk
 
  Copyright (c) 2009 Jason Kulk
 
    This file is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This file is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with NUbot.  If not, see <http://www.gnu.org/licenses/>.
*/

#ifndef ACTION_H
#define ACTION_H

#include <string>
using namespace std;

/*! The base action class
 */
class Action
{
public:
    enum ActionType {
        Motion,
        Light,
        Sound,
        Camera,
        System
    };
protected:
    ActionType m_action_type;
    string testString;
};

class MotionAction : public Action
{
public:
    enum MotionType {
        Walk,
        Head,
        Special
    };
    MotionAction();
    ~MotionAction();
    void test();
private:
    MotionType m_motion_type;
};

class LightAction : public Action
{
public:
    LightAction() {testString = string("LightAction");};
    ~LightAction() {};
};

#endif