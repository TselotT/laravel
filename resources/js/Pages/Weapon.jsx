import { Link, Head } from "@inertiajs/inertia-react";
import Table from "react-bootstrap/Table";
export default function Weapon(props) {
    console.log(props);
    const { weapons } = props
    return (
        <>
            <h1 className="text-center my-6">List of Weapons</h1>
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
                            <td>{weapon.id}</td>
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
