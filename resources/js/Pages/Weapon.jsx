import { Link, Head } from "@inertiajs/inertia-react";
import Table from "react-bootstrap/Table";
export default function Weapon(props) {
    const { weapons } = props
    let no = 0
    return (
        <>
            <h1 className="text-center my-6">List of Weapons</h1>
            <h4 className="text-center"><Link className="btn btn-primary" href="/heroes">Go to heroes page</Link></h4>
            <Table className="mx-3" striped bordered hover>
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Name</th>
                        <th>Damage</th>
                        <th>Is Range</th>
                        <th>Heroes Count</th>
                    </tr>
                </thead>
                <tbody>
                    {weapons && weapons.map((weapon,i) => (
                        <tr key={weapon.id}>
                            <td>{++no}</td>
                            <td>{weapon.name}</td>
                            <td>{weapon.damage}</td>
                            <td>{weapon.is_range}</td>
                            <td>{weapon.total_heroes_count}</td>
                        </tr>
                    ))}
                    
                </tbody>
            </Table>
        </>
    );
}
