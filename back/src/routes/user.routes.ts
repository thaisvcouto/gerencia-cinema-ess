import { Router, Request, Response } from "express";
import { request } from "http";
import { UserController } from "../controllers/user.controller";
import { User } from "../models/user";

const userRouter = Router();

const userController = new UserController();

userRouter.route("/")
    .get((req: Request, res: Response) => {

        let users = userController.getUsers();
        return res.json({ users });

    })
    .post((req: Request, res: Response) => {
        
        let name = req.body.name;
        let age = parseInt(req.body.age);
        let email = req.body.email;
        const newUser = userController.createUser(name, age, email);

        if (newUser){
            return res.json({ message: "Usuário criado com sucesso!"});
        }

        return res.status(409).json({ error: "Email já cadastrado!"});
    })
    .put((req: Request, res: Response) => {
        return res.json({ Warning: "Método PUT não suportado para a rota /users"});
    })
    .delete((req: Request, res: Response) => {
        return res.json({ Warning: "Método DELETE não suportado para a rota /users"});
    });

userRouter.route("/:id")
    .get((req: Request, res: Response) => {

        let id = parseInt(req.params.id);
        let user = userController.getUsersById(id);
        if (!user) { //not found
            return res.status(404).json({ error: "Usuário não encontrado." });
        }

        return res.json({ user });
    })
    .post((req: Request, res: Response) => {
        return res.json({ Warning: "Método POST não suportado para a rota /users/:id" });
    })
    .put((req: Request, res: Response) => {
        let id = parseInt(req.params.id);
        let name = req.body.name;
        let age = parseInt(req.body.age);

        let updateUser = userController.updateUser(id, name, age);
        if (!updateUser) {
            return res.status(404).json({ error: "Usuário não encontrado." });
        } 

        return res.status(200).json({ success: "Usuário atualizado com sucesso." });
    })
    .delete ((req: Request, res: Response) => {
        let id = parseInt(req.params.id);

        let deleteUser = userController.deleteUser(id);

        if (!deleteUser) {
            return res.status(404).json({ error: "Usuário não encontrado." });
        } 

        return res.status(200).json({ success: "Usuário deletado com sucesso." });
    });
    
export default userRouter;