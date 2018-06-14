package spin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import spin.dao.InvitationDao;
import spin.model.Invitation;

@Service("invitationService")
@Transactional
public class InvitationServiceImpl implements InvitationService{

    @Autowired
    private InvitationDao invitationDao;
    
    @Override
    public void saveInvitationQuestionnaire(Invitation invitation) {
        invitationDao.saveInvitation(invitation);
    }

}
