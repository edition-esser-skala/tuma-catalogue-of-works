\version "2.24.2"
\include "header.ly"

TromboneI = {
  \relative c' {
    \clef alto
    \key g \minor \time 4/4 \tempoMarkup "Adagio"
    r2-\solo r8 es-\markup \remark "à mezza voce" es es
    d4 r r8 as' as as
    g4 r8 g a4 b
    a2\trill g4 r
    r8 es es es d2
    r8 d d d d4 r
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key g \minor \time 4/4 \tempoMarkup "Adagio"
    r2-\solo r8 c-\markup \remark "à mezza voce" c c
    a4 r r8 d d d
    es4 r8 es a,!4 g8 b16 c
    d2 d4 r
    r8 c c c a4 r
    r8 b b b b4 r
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key g \minor \time 4/4 \tempoMarkup "Adagio"
    d'8 es16( d) b'8 g16( es) c2
    c8 d16( c) a'8 fis16 c h2
    c8 d16( c) g'8 es16( c) fis4 g~
    g fis\trill g2\p
    a1~
    a4 g8 g g4 r
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key g \minor \time 4/4 \tempoMarkup "Adagio"
    b'4. b8 a2
    a4. a8 d,2
    es4 c'2 b4
    a2\trill g\p
    c1
    b4. b8 b4 r
  }
}

Tenore = {
  \relative c' {
    \clef tenor
    \key g \minor \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    R1*3
    r2 d4.^\solo es8
    c4 c c8. c16 b8 a
    b8. b16 b8 r r4 d8 g,
  }
}

TenoreLyrics = \lyricmode {
  Par -- ce
  mi -- hi, par -- ce mi -- hi
  Do -- mi -- ne: ni -- hil
}

Organo = {
  \relative c {
    \clef bass
    \key g \minor \time 4/4 \tempoMarkup "Adagio"
    g'4-\solo g g4. g8
    fis4 fis f4. f8
    es4 es d2~
    d g,~
    g fis
    g~ g4 r
  }
}

BassFigures = \figuremode {
  r4 <6> <4 2>2
  <6 5> <4! _->
  <6> <7 _+>4 <6 4>
  <5 \t> <\t _+> r4. <6>8
  <4 2>2 <6 5>
  <9>4 <8>2.
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff \with { \smallGroupDistance } <<
        \set GrandStaff.instrumentName = "trb"
        \new Staff {
          \set Staff.instrumentName = "1"
          \TromboneI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \TromboneII
        }
      >>
    >>
    \new StaffGroup <<
      \new GrandStaff <<
        \set GrandStaff.instrumentName = "vl"
        \new Staff {
          \set Staff.instrumentName = "1"
          \ViolinoI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \ViolinoII
        }
      >>
    >>
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "T"
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics
    >>
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "org" "b" }
        \Organo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
}
