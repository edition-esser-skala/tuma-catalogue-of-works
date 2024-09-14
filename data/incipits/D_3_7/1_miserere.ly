\version "2.24.2"
\include "header.ly"

Cornetto = {
  \relative c' {
    \clef soprano
    \key f \dorian \time 3/2 \tempoMarkup "Adagio"
    R1.*3 \gotoBar "9"
    as'1 as2
    b1 b2
    r c c
    des1.
  }
}

TromboneI = {
  \relative c' {
    \clef alto
    \key f \dorian \time 3/2 \tempoMarkup "Adagio"
    R1.*3 \gotoBar "9"
    f1 f2
    e1 e2
    r f f
    f1.
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key f \dorian \time 3/2 \tempoMarkup "Adagio"
    R1.*3 \gotoBar "9"
    c1.
    b
    r2 es! es
    des1.
  }
}

Fagotto = {
  \relative c {
    \clef bass
    \key f \dorian \time 3/2 \tempoMarkup "Adagio"
    R1.*3 \gotoBar "9"
    f,1.
    g
    as2 a1
    b1.
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key f \dorian \time 3/2 \tempoMarkup "Adagio"
    c2\p c'4( as) e( f)
    b2 des4( b) e,( des')
    c2 c4( a) f( es'!) \gotoBar "9"
    f,2\f c'4( as) f( as)
    b2 des4( b) e,( des')
    c2 c4( a) f( es'!)
    des2 des4( b) des( f)
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key f \dorian \time 3/2 \tempoMarkup "Adagio"
    as2\p c'4( as) e( f)
    e2 des'4( b) e,( des')
    f,2 f1 \gotoBar "9"
    as,2\f c'4( as) f( as)
    b2 des4( b) e,( des')
    c2 c4( a) f( es'!)
    des2 des4( b) des( f)
  }
}

Viola = {
  \relative c' {
    \clef alto
    \key f \dorian \time 3/2 \tempoMarkup "Adagio"
    R1.*3 \gotoBar "9"
    R1.*4
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key f \dorian \time 3/2 \tempoMarkup "Adagio" \autoBeamOff
    R1.*3 \gotoBar "9"
    as'1^\tutti as2
    b1 b2
    r c c
    des1 des2
  }
}

SATBLyrics = \lyricmode {
  Mi -- se --
  re -- re,
  mi -- se --
  re -- re,
}

Alto = {
  \relative c' {
    \clef alto
    \key f \dorian \time 3/2 \tempoMarkup "Adagio" \autoBeamOff
    R1.*3 \gotoBar "9"
    f1^\tutti f2
    e1 e2
    r f f
    f1 f2
  }
}

Tenore = {
  \relative c' {
    \clef tenor
    \key f \dorian \time 3/2 \tempoMarkup "Adagio" \autoBeamOff
    R1.*3 \gotoBar "9"
    c1^\tutti c2
    b1 b2
    r es! es
    des1 des2
  }
}

Basso = {
  \relative c {
    \clef bass
    \key f \dorian \time 3/2 \tempoMarkup "Adagio" \autoBeamOff
    R1.*3 \gotoBar "9"
    f1^\tutti f,2
    g1 g2
    r a a
    b1 b2
  }
}

Organo = {
  \relative c {
    \clef bass
    \key f \dorian \time 3/2 \tempoMarkup "Adagio"
    \mvTr f,2\p-\solo r r
    g r r
    as a1 \gotoBar "9"
    f1.-\tutti
    g
    as2 a1
    b1.
  }
}

BassFigures = \figuremode {
  r1.
  r
  r
  r
  <6! 5->
  <6>2 <6 5>1
  <_->1.
}

\score {
  <<
    \new StaffGroup <<
      \new Staff \with { \smallStaffDistance } {
        \set Staff.instrumentName = "cnto"
        \Cornetto
      }
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
      \new Staff {
        \set Staff.instrumentName = "fag"
        \Fagotto
      }
    >>
    \new StaffGroup <<
      \new GrandStaff \with { \smallGroupDistance } <<
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
      \new Staff {
        \set Staff.instrumentName = "vla"
        \Viola
      }
    >>
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "S"
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SATBLyrics

      \new Staff {
        \set Staff.instrumentName = "A"
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \SATBLyrics

      \new Staff {
        \set Staff.instrumentName = "T"
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \SATBLyrics

      \new Staff {
        \set Staff.instrumentName = "B"
        \new Voice = "Basso" { \dynamicUp \Basso }
      }
      \new Lyrics \lyricsto Basso \SATBLyrics
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
