package br.com.batistacorp.agendamento.model;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="itmn032_agendamento")
public class Agendamento {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="num_seq")
	private int       numSeq;
	@Column(name="nome_cli", length=100)
	private String    nomeCliente;
	@Column(name="email_cli", length=100)
	private String    emailCliente;
	@Column(name="celular_cli", length=20)
	private String    celularCliente;
	@Column(name="data_agendamento")
	private LocalDate dataAgendamento;
	@Column(name="hora_agendamento", length=10)
	private String    horaAgendamento;
	@Column(name="observacao", length=255)
	private String    observacao;
	@ManyToOne
	@JoinColumn(name="id_agencia")
	private Agencia agencia;

}


